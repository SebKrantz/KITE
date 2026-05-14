# 04_05_tariffs.R
# Load MAcMap-HS6 2019 bilateral tariff data, build HS6→ICIO concordance via
# HS3 → SITC3 → ICIO mapping, aggregate to ICIO sector level.
# Source: Fontagné, Guimbard & Orefice (2022), Tariffs_2001_2019.zip
# Writes: 04_tariff.rds

library(data.table)
library(collapse)
library(concordance)   # hs3_sitc3 table: HS 2007 (HS3) → SITC Rev.3

TARIFF_ZIP <- "data/raw/macmap_tariffs/Tariffs_2001_2019.zip"
OUT_DIR    <- "data"

# ── 1. HS3 → SITC3 (2-digit) concordance ──────────────────────────────────────
cat("Building HS6 → ICIO concordance via SITC3...\n")

# hs3_sitc3: 5050 rows, columns: HS3_6d, HS3_4d, HS3_2d, SITC3_5d, SITC3_4d, SITC3_3d, SITC3_2d, SITC3_1d
hs_sitc <- as.data.table(hs3_sitc3)[, .(hs6 = HS3_6d, sitc2d = SITC3_2d, sitc3d = SITC3_3d)]

# ── 2. SITC3 → ICIO sector mapping ────────────────────────────────────────────
# Built from standard ISIC Rev.4 / SITC Rev.3 relationships.
# Services and non-traded sectors get no tariff (default handled in assembly).

sitc2d_icio <- rbindlist(list(
  # --- Food, beverage, tobacco (C10T12) ---
  data.table(sitc2d = c("00","01","02","03","04","05","06","07","08","09",
                         "11","12"),
             icio = "C10T12"),
  # --- Agriculture (A01) - raw primary commodities ---
  data.table(sitc2d = c("21","22","26","29"), icio = "A01"),
  # --- Forestry / Wood raw material (A02) ---
  data.table(sitc2d = c("24"), icio = "A02"),
  # --- Crude rubber → C22 (rubber products) ---
  data.table(sitc2d = c("23"), icio = "C22"),
  # --- Pulp/paper waste (C17_18) ---
  data.table(sitc2d = c("25"), icio = "C17_18"),
  # --- Crude fertilizers / other minerals → split B07, B08, C20 handled below at 3d ---
  data.table(sitc2d = c("27","28"), icio = "B08"),
  # --- Energy: coal (B05) + petroleum+gas (B06/C19) handled at 3-digit ---
  data.table(sitc2d = c("32"), icio = "B05"),    # coal
  data.table(sitc2d = c("33"), icio = "B06"),    # crude petroleum (refined handled at 3d)
  data.table(sitc2d = c("34"), icio = "B06"),    # natural gas
  data.table(sitc2d = c("35"), icio = "D"),      # electric current
  # --- Oils & fats → C20 (basic chemicals) ---
  data.table(sitc2d = c("41","42","43"), icio = "C20"),
  # --- Chemicals ---
  data.table(sitc2d = c("51","52","53","55","56","57","58","59"), icio = "C20"),
  data.table(sitc2d = c("54"), icio = "C21"),    # pharmaceuticals
  # --- Manufactures by material ---
  data.table(sitc2d = c("61","83","84","85"), icio = "C13T15"),  # leather, clothing, footwear
  data.table(sitc2d = c("62"), icio = "C22"),    # rubber manufactures
  data.table(sitc2d = c("63"), icio = "C16"),    # cork & wood
  data.table(sitc2d = c("64"), icio = "C17_18"), # paper
  data.table(sitc2d = c("65"), icio = "C13T15"), # textile yarn/fabrics
  data.table(sitc2d = c("66"), icio = "C23"),    # non-metallic minerals
  data.table(sitc2d = c("67"), icio = "C24A"),   # iron and steel
  data.table(sitc2d = c("68"), icio = "C24B"),   # non-ferrous metals
  data.table(sitc2d = c("69"), icio = "C25"),    # metal manufactures NES
  # --- Machinery and transport (Section 7) ---
  data.table(sitc2d = c("71","72","73","74"), icio = "C28"),   # machinery NES
  data.table(sitc2d = c("75","76","87","88"), icio = "C26"),   # computers, telecom, optical
  data.table(sitc2d = c("77"), icio = "C27"),                  # electrical machinery
  data.table(sitc2d = c("78"), icio = "C29"),                  # road vehicles
  data.table(sitc2d = c("79"), icio = "C302T309"),             # other transport (3d overrides below)
  # --- Misc manufactures ---
  data.table(sitc2d = c("81","82","89","91","92","93","94","95","96","97"),
             icio = "C31T33")
))

# Fine-grained 3-digit overrides for ambiguous sectors
sitc3d_icio_override <- rbindlist(list(
  data.table(sitc3d = c("333"), icio = "B06"),          # crude petroleum (not refined)
  data.table(sitc3d = c("334","335"), icio = "C19"),    # refined petroleum products
  data.table(sitc3d = c("271","272","273"), icio = "B05"), # coal, coke
  data.table(sitc3d = c("274","278","279"), icio = "C20"), # industrial minerals → chemicals
  data.table(sitc3d = c("281","282"), icio = "B07"),    # iron ore, scrap
  data.table(sitc3d = c("286","287","288"), icio = "B07"), # metal ores
  data.table(sitc3d = c("793"), icio = "C301"),         # ships and boats
  data.table(sitc3d = c("791","792","794"), icio = "C302T309") # railway, aircraft, other
))

# Build full HS6 → ICIO concordance: left-join SITC2d mapping onto HS codes
hs_icio <- join(hs_sitc, sitc2d_icio,
                on = "sitc2d", how = "left", verbose = 2)

# Apply 3-digit overrides via DT update-by-reference (not a full join — just targeted overwrites)
hs_icio[sitc3d_icio_override, on = "sitc3d", icio := i.icio]

# Fallback for any still-unmapped codes
hs_icio[is.na(icio), icio := "C10T12"]
setnames(hs_icio, "hs6", "hs6_code")

cat("  HS6→ICIO concordance:", nrow(hs_icio), "HS6 codes mapped\n")
cat("  ICIO sectors covered by tariffs:",
    paste(sort(unique(hs_icio$icio)), collapse = ", "), "\n")

# ── 3. Load MAcMap 2019 tariff data ───────────────────────────────────────────
cat("\nExtracting mmhs6_2019.csv from ZIP (streaming, ~3.6 GB uncompressed)...\n")
cmd <- "7z e -so 'data/raw/macmap_tariffs/Tariffs_2001_2019.zip' 'Tariffs_2001_2019/mmhs6_2019.csv' 2>/dev/null"
cat("  Running:", cmd, "\n")

# Actual columns: importer, exporter, hs6_2007, year, adv
# adv is in decimal fraction form (0.05 = 5% tariff)
tariff_raw <- tryCatch(
  fread(cmd = cmd,
        select = c("exporter", "importer", "hs6_2007", "adv"),
        colClasses = list(character = c("exporter", "importer", "hs6_2007")),
        showProgress = TRUE),
  error = function(e) {
    cat("  Streaming failed, extracting to disk...\n")
    system("7z e -o'data/raw/macmap_tariffs/' 'data/raw/macmap_tariffs/Tariffs_2001_2019.zip' 'Tariffs_2001_2019/mmhs6_2019.csv' -y")
    fread("data/raw/macmap_tariffs/mmhs6_2019.csv",
          select = c("exporter", "importer", "hs6_2007", "adv"),
          showProgress = TRUE)
  }
)
cat("  Loaded:", nrow(tariff_raw), "rows\n")

tariff_raw <- tariff_raw[exporter != importer & is.finite(adv) & adv >= 0]
setnames(tariff_raw, "hs6_2007", "hs6_code")

# ── 4. ICIO country list ───────────────────────────────────────────────────────
# Loaded dynamically to capture all countries (including STP added in ICIO 2025)
icio_countries <- sort(unique(readRDS(file.path(OUT_DIR, "02_trade_share.rds"))$origin))
cat("ICIO countries:", length(icio_countries), "\n")

tariff_raw[!(exporter %in% icio_countries), exporter := "ROW"]
tariff_raw[!(importer %in% icio_countries), importer := "ROW"]

# ── 5. Map tariffs to ICIO sectors ────────────────────────────────────────────
tariff_mapped <- join(tariff_raw, hs_icio[, .(hs6_code, icio)],
                      on = "hs6_code", how = "inner", verbose = 2)

# ── 6. Aggregate to ICIO sector level (simple average — no trade weights in 2019 file) ──
cat("Aggregating to ICIO sector level...\n")
tariff_sector <- tariff_mapped[
  , .(value = 1 + mean(adv, na.rm = TRUE)),   # KITE multiplier: 1 + adv (decimal fraction)
  by = .(origin = exporter, destination = importer, sector = icio)
]
tariff_sector <- tariff_sector[origin != destination]   # drop within-ROW

# ── 7. Fill all (origin × destination × sector) combinations ──────────────────
cat("Filling missing country-sector pairs...\n")
tradeable_sectors <- unique(hs_icio$icio)
all_sectors <- sort(unique(readRDS(file.path(OUT_DIR, "02_trade_share.rds"))$sector))
non_traded  <- setdiff(all_sectors, tradeable_sectors)

all_combos <- CJ(
  origin      = icio_countries,
  destination = icio_countries,
  sector      = all_sectors
)[origin != destination]

tariff_full <- join(all_combos, tariff_sector,
                    on = c("origin", "destination", "sector"),
                    how = "left", verbose = 2)
tariff_full[is.na(value), value := 1]         # missing bilateral pair → no tariff
tariff_full[sector %in% non_traded, value := 1] # non-tradeable services → no tariff

# Self-trade rows (origin == destination → no tariff)
self_trade <- CJ(country = icio_countries,
                 sector  = all_sectors)[
  , .(origin = country, destination = country, sector, value = 1)]
tariff_final <- rbindlist(list(tariff_full, self_trade))

cat("  Final tariff table rows:", nrow(tariff_final), "\n")
cat("  Tariff value range (excluding 1.0):",
    round(range(tariff_final[value != 1, value]), 3), "\n")
cat("  Mean tariff multiplier:", round(mean(tariff_final$value), 4), "\n")

saveRDS(tariff_final, file.path(OUT_DIR, "04_tariff.rds"))
cat("Saved 04_tariff.rds\n")
