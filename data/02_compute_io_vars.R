# 02_compute_io_vars.R
# Compute all IO-based KITE initial_conditions from parsed ICIO components.
# Reads: 01_Z_long.rds, 01_Y_long.rds, 01_VA_long.rds, 01_OUT_long.rds
# Writes: 02_trade_share.rds, 02_expenditure.rds, 02_factor_share.rds,
#         02_intermediate_share.rds, 02_consumption_share.rds,
#         02_value_added.rds, 02_trade_balance.rds

library(data.table)
library(collapse)

OUT_DIR <- "data"
cat("Loading parsed ICIO components...\n")
Z_long   <- readRDS(file.path(OUT_DIR, "01_Z_long.rds"))
Y_long   <- readRDS(file.path(OUT_DIR, "01_Y_long.rds"))
VA_long  <- readRDS(file.path(OUT_DIR, "01_VA_long.rds"))
OUT_long <- readRDS(file.path(OUT_DIR, "01_OUT_long.rds"))

# ── 1. trade_share (origin x destination x sector) ────────────────────────────
# π_{od}^s = share of total demand for sector-s goods in destination d from origin o
# Demand = sum over all using-sectors (intermediate) + all final demand types

cat("Computing trade_share...\n")

Z_ods <- Z_long[, .(value = sum(value)),
                by = .(origin = row_country, destination = col_country, sector = row_sector)]
Y_ods <- Y_long[, .(value = sum(value)),
                by = .(origin = row_country, destination = col_country, sector = row_sector)]

demand_ods <- rbindlist(list(Z_ods, Y_ods))[
  , .(value = sum(value)), by = .(origin, destination, sector)]

total_ds <- demand_ods[, .(total = sum(value)), by = .(destination, sector)]

trade_share <- join(demand_ods, total_ds,
                    on = c("destination", "sector"),
                    how = "left", validate = "m:1", verbose = 2)
trade_share[, value := value / total][, total := NULL]

check <- trade_share[, .(s = sum(value)), by = .(destination, sector)]
cat("  trade_share sum check (should all be ~1):", round(range(check$s), 6), "\n")
saveRDS(trade_share[, .(origin, destination, sector, value)],
        file.path(OUT_DIR, "02_trade_share.rds"))

# ── 2. expenditure (country x sector) ─────────────────────────────────────────
cat("Computing expenditure...\n")
expenditure <- total_ds[, .(country = destination, sector, value = total)]
cat("  Negative expenditures:", sum(expenditure$value < 0), "\n")
saveRDS(expenditure, file.path(OUT_DIR, "02_expenditure.rds"))

# Reference sector/country sets (used by factor_share and intermediate_share padding)
all_sectors_ref  <- sort(unique(trade_share$sector))   # 50 ICIO sectors
all_countries_ref <- sort(unique(OUT_long$country))     # 81 countries

# ── 3. factor_share (country x sector) ────────────────────────────────────────
# β_d^s = VA_{d,s} / OUT_{d,s}  (value-added cost share in gross output)

cat("Computing factor_share...\n")
factor_share <- join(
  VA_long[,  .(country, sector, VA)],
  OUT_long[, .(country, sector, gross_output)],
  on = c("country", "sector"),
  how = "inner", validate = "1:1", verbose = 2
)[, value := VA / gross_output][, .(country, sector, value)]

factor_share <- factor_share[is.finite(value)]
factor_share[value <= 0, value := 1e-4]
factor_share[value >= 1, value := 1 - 1e-4]

# Pad to full 81×50 grid: sectors with zero output (e.g. T) → pure-VA (≈1)
full_fs <- CJ(country = all_countries_ref, sector = all_sectors_ref)
factor_share <- join(full_fs, factor_share,
                     on = c("country", "sector"),
                     how = "left", validate = "1:1", verbose = 2)
factor_share[is.na(value), value := 1 - 1e-4]

cat("  factor_share range:", round(range(factor_share$value), 4), "\n")
cat("  factor_share rows:", nrow(factor_share), "\n")
saveRDS(factor_share[, .(country, sector, value)],
        file.path(OUT_DIR, "02_factor_share.rds"))

# ── 4. intermediate_share (input x output x country) ──────────────────────────
# γ_{k,j}^d = share of total intermediate inputs to (d,j) coming from sector k

cat("Computing intermediate_share...\n")
int_kj_d <- Z_long[, .(int_flow = sum(value)),
                   by = .(input = row_sector, output = col_sector, country = col_country)]

total_int_jd <- int_kj_d[, .(total_int = sum(int_flow)), by = .(output, country)]

intermediate_share <- join(int_kj_d, total_int_jd,
                           on = c("output", "country"),
                           how = "left", validate = "m:1", verbose = 2)
intermediate_share[, value := int_flow / total_int][
  , c("int_flow", "total_int") := NULL]

# Pad to full 50×50×81 grid: sector T gets 0 (no activity; zeroed by (1−β)≈0 in model)
all_countries_is <- sort(unique(intermediate_share$country))
full_is <- CJ(input = all_sectors_ref, output = all_sectors_ref, country = all_countries_is)
intermediate_share <- join(full_is, intermediate_share,
                           on = c("input", "output", "country"),
                           how = "left", verbose = 2)
intermediate_share[is.na(value), value := 0]

check2 <- intermediate_share[, .(s = sum(value)), by = .(output, country)]
cat("  intermediate_share sum check (active ≈ 1, inactive = 0):",
    round(range(check2$s), 6), "\n")
saveRDS(intermediate_share[, .(input, output, country, value)],
        file.path(OUT_DIR, "02_intermediate_share.rds"))

# ── 5. consumption_share (country x sector) ───────────────────────────────────
# α_d^s = share of household consumption in country d spent on sector-s goods

cat("Computing consumption_share...\n")
hh_demand <- Y_long[demand_type == "HFCE",
                    .(hh = sum(value)),
                    by = .(country = col_country, sector = row_sector)]

total_hh <- hh_demand[, .(total_hh = sum(hh)), by = country]

consumption_share <- join(hh_demand, total_hh,
                          on = "country",
                          how = "left", validate = "m:1", verbose = 2)
consumption_share[, value := hh / total_hh][, c("hh", "total_hh") := NULL]

# Clip negatives (HFCE can be negative in IO tables due to adjustment items)
consumption_share[value < 0, value := 0]

# Renormalize after clipping
total_cs <- consumption_share[, .(tot = sum(value)), by = country]
cs_norm <- join(consumption_share, total_cs,
                on = "country",
                how = "left", validate = "m:1", verbose = 2)
consumption_share[, value := cs_norm$value / cs_norm$tot]

check3 <- consumption_share[, .(s = sum(value)), by = country]
cat("  consumption_share sum check (should all be ~1):", round(range(check3$s), 6), "\n")
saveRDS(consumption_share[, .(country, sector, value)],
        file.path(OUT_DIR, "02_consumption_share.rds"))

# ── 6. value_added (country) ───────────────────────────────────────────────────
cat("Computing value_added...\n")
value_added <- VA_long[, .(value = sum(VA)), by = country]
cat("  Total global value added (USD mn):", round(sum(value_added$value) / 1e6, 2), "trillion\n")
saveRDS(value_added, file.path(OUT_DIR, "02_value_added.rds"))

# ── 7. trade_balance (country) ─────────────────────────────────────────────────
cat("Computing trade_balance...\n")
cross_Z <- Z_long[row_country != col_country,
                  .(value = sum(value)), by = .(row_country, col_country)]
cross_Y <- Y_long[row_country != col_country,
                  .(value = sum(value)), by = .(row_country, col_country)]
cross_all <- rbindlist(list(cross_Z, cross_Y))[
  , .(value = sum(value)), by = .(row_country, col_country)]

exports_d <- cross_all[, .(exports = sum(value)), by = .(country = row_country)]
imports_d <- cross_all[, .(imports = sum(value)), by = .(country = col_country)]

trade_balance <- join(exports_d, imports_d,
                      on = "country",
                      how = "full", validate = "1:1", verbose = 2)
trade_balance[is.na(exports), exports := 0]
trade_balance[is.na(imports), imports := 0]
trade_balance[, value := exports - imports][, c("exports", "imports") := NULL]

cat("  Global trade balance sum (should be ~0 USD mn):",
    round(sum(trade_balance$value)), "\n")
saveRDS(trade_balance[, .(country, value)], file.path(OUT_DIR, "02_trade_balance.rds"))

cat("\nAll IO variables saved to", OUT_DIR, "\n")
