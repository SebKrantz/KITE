# 01_parse_icio.R
# Parse OECD ICIO 2022 SML matrix into long-format components:
#   Z_long  – intermediate flows (origin x sector x dest x using-sector)
#   Y_long  – final demand flows (origin x sector x dest x demand type)
#   VA_long – value added (country x sector)
#   OUT_long – gross output (country x sector)

library(data.table)

ICIO_ZIP  <- "/Users/sebastiankrantz/Documents/Data/OECD_ICIOs/2016-2022_SML.zip"
YEAR      <- "2022"
OUT_DIR   <- "data"

DEMAND_TYPES <- c("HFCE", "NPISH", "GGFC", "GFCF", "INVNT", "DPABR")

# ── 1. Extract and read ────────────────────────────────────────────────────────
cat("Extracting", YEAR, "SML CSV...\n")
tmp_dir  <- tempdir()
csv_name <- paste0(YEAR, "_SML.csv")
unzip(ICIO_ZIP, files = csv_name, exdir = tmp_dir, overwrite = TRUE)
csv_path <- file.path(tmp_dir, csv_name)

cat("Reading CSV (~88 MB)...\n")
icio <- fread(csv_path, showProgress = FALSE)
setnames(icio, "V1", "row_id")
cat("  Dimensions:", nrow(icio), "x", ncol(icio), "\n")

# ── 2. Classify columns ────────────────────────────────────────────────────────
all_cols <- setdiff(names(icio), "row_id")

# Country code is always first 3 chars; type/sector follows the first "_"
col_suffix <- function(x) substr(x, 5, nchar(x))

is_demand_col <- col_suffix(all_cols) %in% DEMAND_TYPES
sector_cols   <- all_cols[!is_demand_col & all_cols != "OUT"]
demand_cols   <- all_cols[is_demand_col]

col_sector_dt <- data.table(
  col_name    = sector_cols,
  col_country = substr(sector_cols, 1, 3),
  col_sector  = col_suffix(sector_cols)
)
col_demand_dt <- data.table(
  col_name    = demand_cols,
  col_country = substr(demand_cols, 1, 3),
  demand_type = col_suffix(demand_cols)
)

cat("  Sector cols:", length(sector_cols), "| Demand cols:", length(demand_cols), "\n")

# ── 3. Classify rows ───────────────────────────────────────────────────────────
# Flow rows: match COUNTRY_SECTOR pattern (3-letter ISO + "_" + sector code)
# Skip TLS (appears as standalone total row, not COUNTRY_SECTOR), VA, OUT
flow_mask <- grepl("^[A-Z]{3,4}_[A-Z0-9]", icio$row_id)
va_mask   <- icio$row_id == "VA"
out_mask  <- icio$row_id == "OUT"

cat("  Flow rows:", sum(flow_mask), "| VA row:", sum(va_mask), "| OUT row:", sum(out_mask), "\n")

# Parse flow rows
icio[flow_mask, row_country := substr(row_id, 1, 3)]
icio[flow_mask, row_sector  := col_suffix(row_id)]

# ── 4. Extract Z (intermediate flows) ─────────────────────────────────────────
cat("Melting Z (intermediate flows)...\n")
Z_wide <- icio[flow_mask, c("row_country", "row_sector", sector_cols), with = FALSE]
Z_long <- melt(Z_wide,
               id.vars      = c("row_country", "row_sector"),
               variable.name = "col_name",
               value.name   = "value",
               variable.factor = FALSE)
Z_long[col_sector_dt, on = "col_name", `:=`(col_country = i.col_country,
                                              col_sector  = i.col_sector)]
Z_long[, col_name := NULL]
Z_long <- Z_long[value != 0]
cat("  Z_long rows:", nrow(Z_long), "\n")

# ── 5. Extract Y (final demand) ────────────────────────────────────────────────
cat("Melting Y (final demand)...\n")
Y_wide <- icio[flow_mask, c("row_country", "row_sector", demand_cols), with = FALSE]
Y_long <- melt(Y_wide,
               id.vars      = c("row_country", "row_sector"),
               variable.name = "col_name",
               value.name   = "value",
               variable.factor = FALSE)
Y_long[col_demand_dt, on = "col_name", `:=`(col_country = i.col_country,
                                              demand_type = i.demand_type)]
Y_long[, col_name := NULL]
Y_long <- Y_long[value != 0]
cat("  Y_long rows:", nrow(Y_long), "\n")

# ── 6. Extract VA and OUT rows ─────────────────────────────────────────────────
cat("Extracting VA and OUT rows...\n")
VA_vec <- unlist(icio[va_mask,  sector_cols, with = FALSE][1,])
VA_long <- data.table(col_name = sector_cols, VA = as.numeric(VA_vec))
VA_long[col_sector_dt, on = "col_name", `:=`(country = i.col_country, sector = i.col_sector)]
VA_long[, col_name := NULL]

OUT_vec <- unlist(icio[out_mask, sector_cols, with = FALSE][1,])
OUT_long <- data.table(col_name = sector_cols, gross_output = as.numeric(OUT_vec))
OUT_long[col_sector_dt, on = "col_name", `:=`(country = i.col_country, sector = i.col_sector)]
OUT_long[, col_name := NULL]

# ── 7. Save ────────────────────────────────────────────────────────────────────
cat("Saving components to", OUT_DIR, "...\n")
saveRDS(Z_long,   file.path(OUT_DIR, "01_Z_long.rds"))
saveRDS(Y_long,   file.path(OUT_DIR, "01_Y_long.rds"))
saveRDS(VA_long,  file.path(OUT_DIR, "01_VA_long.rds"))
saveRDS(OUT_long, file.path(OUT_DIR, "01_OUT_long.rds"))

cat("Done. Sectors found:", paste(sort(unique(Z_long$row_sector)), collapse = ", "), "\n")
cat("Countries found:", length(unique(Z_long$row_country)), "\n")
