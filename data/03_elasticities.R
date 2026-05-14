# 03_elasticities.R
# Load Fontagné et al. (2022) ICIO-level trade elasticities.
# Source: https://sites.google.com/view/product-level-trade-elasticity/home
# File: icio_elast.dta (New ICIO 2025 classification, updated March 2026)
# Writes: 03_trade_elasticity.rds

library(data.table)
library(collapse)
library(haven)

OUT_DIR   <- "data"
ELAST_FILE <- "data/raw/fontagne_elasticities/icio_elast.dta"

cat("Loading Fontagné et al. (2022) ICIO elasticities...\n")
elast_raw <- as.data.table(read_dta(ELAST_FILE))

cat("  Raw dimensions:", nrow(elast_raw), "x", ncol(elast_raw), "\n")
cat("  Columns:", paste(names(elast_raw), collapse = ", "), "\n")

# Use overall epsilon_icio (not split by final/intermediate)
# Values are negative (demand elasticities); KITE uses positive trade elasticities (Fréchet θ)
# θ = |ε| — take absolute value
elast <- elast_raw[, .(sector = icio2025, value = abs(epsilon_icio))]
cat("  Sectors with estimates:", sum(!is.na(elast$value)), "/", nrow(elast), "\n")

# ICIO SML sectors (50 total, from 2022_SML.csv header):
icio_sectors <- c(
  "A01", "A02", "A03", "B05", "B06", "B07", "B08", "B09",
  "C10T12", "C13T15", "C16", "C17_18", "C19", "C20", "C21", "C22", "C23",
  "C24A", "C24B", "C25", "C26", "C27", "C28", "C29", "C301", "C302T309", "C31T33",
  "D", "E", "F", "G", "H49", "H50", "H51", "H52", "H53",
  "I", "J58T60", "J61", "J62_63", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T"
)

# Left-join estimates onto the full sector list; unmatched sectors get NA → filled below
trade_elasticity <- join(data.table(sector = icio_sectors), elast,
                         on = "sector", how = "left", validate = "1:1", verbose = 2)

# Fill NAs:
# 1. Services sectors (F, G, H49-H52, I, J61, J62_63, K, L, N-T): use aggregate services median
# 2. Other goods with NAs (A02, B05, B09, D, E): use goods median or sector-group average
goods_median    <- median(elast$value, na.rm = TRUE)
services_median <- 3.0  # common assumption for non-tradeable services

# B09 (mining support services) → use average of other B sectors
b_avg <- mean(trade_elasticity[sector %in% c("B05","B06","B07","B08") & !is.na(value), value])
trade_elasticity[sector == "B09" & is.na(value), value := b_avg]

# A02 (forestry): use A01/A03 average
a_avg <- mean(trade_elasticity[sector %in% c("A01","A03") & !is.na(value), value])
trade_elasticity[sector == "A02" & is.na(value), value := a_avg]

# D (electricity), E (water) — not meaningfully internationally traded
trade_elasticity[sector %in% c("D", "E") & is.na(value), value := goods_median]

# All remaining NAs → services median
trade_elasticity[is.na(value), value := services_median]

cat("  Final coverage: all", nrow(trade_elasticity), "ICIO sectors assigned\n")
cat("  Elasticity range:", round(range(trade_elasticity$value), 2), "\n")

saveRDS(trade_elasticity, file.path(OUT_DIR, "03_trade_elasticity.rds"))
cat("Saved 03_trade_elasticity.rds\n")
