# 06_assemble.R
# Assemble and validate the full KITE initial_conditions list for baseline year 2022.
# Reads all outputs from scripts 01-05.
# Writes: initial_conditions_2022.rds

library(data.table)

OUT_DIR <- "data"

cat("Loading computed KITE variables...\n")
trade_share        <- readRDS(file.path(OUT_DIR, "02_trade_share.rds"))
expenditure        <- readRDS(file.path(OUT_DIR, "02_expenditure.rds"))
factor_share       <- readRDS(file.path(OUT_DIR, "02_factor_share.rds"))
intermediate_share <- readRDS(file.path(OUT_DIR, "02_intermediate_share.rds"))
consumption_share  <- readRDS(file.path(OUT_DIR, "02_consumption_share.rds"))
value_added        <- readRDS(file.path(OUT_DIR, "02_value_added.rds"))
trade_balance      <- readRDS(file.path(OUT_DIR, "02_trade_balance.rds"))
trade_elasticity   <- readRDS(file.path(OUT_DIR, "03_trade_elasticity.rds"))
tariff             <- readRDS(file.path(OUT_DIR, "04_tariff.rds"))

# ── Validation ────────────────────────────────────────────────────────────────
cat("\nRunning validation checks...\n")

# 1. trade_share sums to 1 per (destination, sector)
ts_check <- trade_share[, .(s = sum(value)), by = .(destination, sector)]
ts_ok <- all(abs(ts_check$s - 1) < 1e-5)
cat("  trade_share sums to 1:", ts_ok,
    "| max deviation:", round(max(abs(ts_check$s - 1)), 8), "\n")

# 2. consumption_share sums to 1 per country
cs_check <- consumption_share[, .(s = sum(value)), by = country]
cs_ok <- all(abs(cs_check$s - 1) < 1e-5)
cat("  consumption_share sums to 1:", cs_ok,
    "| max deviation:", round(max(abs(cs_check$s - 1)), 8), "\n")

# 3. intermediate_share sums to 1 (or 0 for inactive sectors) per (output, country)
is_check <- intermediate_share[, .(s = sum(value)), by = .(output, country)]
is_ok <- all(abs(is_check$s - 1) < 1e-5 | is_check$s == 0)
n_inactive <- sum(is_check$s == 0)
cat("  intermediate_share sums to 1:", is_ok,
    "| inactive (sum=0):", n_inactive,
    "| max deviation (active):", round(max(abs(is_check[s > 0, s] - 1)), 8), "\n")

# 4. trade_balance global sum ≈ 0
tb_sum <- sum(trade_balance$value)
cat("  trade_balance global sum:", round(tb_sum), "USD mn (should be ~0)\n")

# 5. All tariff values ≥ 1
tariff_ok <- tariff[, all(value >= 1)]
cat("  Tariff values all ≥ 1:", tariff_ok, "\n")

# 6. Trade elasticities > 0
theta_ok <- trade_elasticity[, all(value > 0)]
cat("  Trade elasticities all > 0:", theta_ok, "\n")

# 7. Value added all positive
va_ok <- value_added[, all(value > 0)]
cat("  Value added all positive:", va_ok, "\n")

# 8. factor_share in (0, 1)
fs_ok <- factor_share[, all(value > 0 & value < 1)]
cat("  factor_share in (0,1):", fs_ok, "\n")

# ── Assemble ──────────────────────────────────────────────────────────────────
cat("\nAssembling initial_conditions list...\n")

initial_conditions <- list(
  trade_share        = trade_share,
  intermediate_share = intermediate_share,
  factor_share       = factor_share,
  consumption_share  = consumption_share,
  expenditure        = expenditure,
  value_added        = value_added,
  trade_balance      = trade_balance,
  tariff             = tariff,
  elasticities = list(
    trade_elasticity = trade_elasticity
  )
)

# Print summary
cat("\nInitial conditions summary:\n")
for (nm in setdiff(names(initial_conditions), "elasticities")) {
  d <- initial_conditions[[nm]]
  cat(sprintf("  %-20s %d rows, cols: %s\n",
              nm, nrow(d), paste(names(d), collapse = ", ")))
}
cat("  elasticities$trade_elasticity:",
    nrow(initial_conditions$elasticities$trade_elasticity), "sectors\n")

out_file <- file.path(OUT_DIR, "initial_conditions_2022.rds")
saveRDS(initial_conditions, out_file)
cat("\nSaved:", out_file, "\n")
cat("File size:", round(file.size(out_file) / 1e6, 1), "MB\n")
