# Plan: Build KITE Initial Conditions Database (Baseline 2022)

## Status: COMPLETE ✓

All scripts implemented and smoke-tested. `data/initial_conditions_2022.rds` (4.3 MB) passes all 8
validation checks; CP2015 null scenario converges in 25 iterations / 3.7 s.

---

## Context

KITE requires a named list of `data.table` objects as `initial_conditions`. Baseline year: **2022**.
Sources: OECD ICIO 2025 SML tables (local), CEPII MAcMap-HS6 2019 (tariffs), Fontagné et al. 2022
(trade elasticities). Processing: `data.table` + `collapse` (fastverse).

**Coding conventions (mandatory):**
- Use `collapse::join(x, y, on=..., how=..., validate=..., verbose=2)` for **all** table merges.
  Read the verbose output to confirm match rates are sensible before proceeding.
- `data.table` update-by-reference (`DT[i, col := ...]`) is fine for in-place column updates that
  are not conceptually "joins".

---

## Output

Scripts: `/Users/sebastiankrantz/Documents/R/KITE/data/`  
Final output: `data/initial_conditions_2022.rds` — named list of `data.table` objects.

---

## Step 1: Parse OECD ICIO 2022 SML  ✓

**Source:** `/Users/sebastiankrantz/Documents/Data/OECD_ICIOs/2016-2022_SML.zip`  
**Script:** `data/01_parse_icio.R`

Wide matrix 4053 × 4538 rows. Split `V1` by first `_` to get country/sector. Identify VA and OUT
rows. Melt flow rows → `Z_long` (9.77M rows), `Y_long` (1.27M rows), `VA_long`, `OUT_long`.
Final demand columns: HFCE, NPISH, GGFC, GFCF, INVNT, DPABR.

Outputs: `01_Z_long.rds`, `01_Y_long.rds`, `01_VA_long.rds`, `01_OUT_long.rds`

---

## Step 2: Compute IO Variables  ✓

**Script:** `data/02_compute_io_vars.R`  
**Uses:** `collapse::join()` for all merges with `verbose=2`.

| Variable | Dims | Key logic |
|---|---|---|
| `trade_share` | origin×dest×sector | `join(demand_ods, total_ds, how="left")` then divide |
| `expenditure` | country×sector | denominator of above |
| `factor_share` | country×sector | `join(VA_long, OUT_long, how="inner", validate="1:1")` then pad to full 81×50 grid (sector T → 1−1e-4) |
| `intermediate_share` | input×output×country | `join(int_kj_d, total_int_jd, how="left")` then pad to full 50×50×81 grid (sector T rows → 0) |
| `consumption_share` | country×sector | HFCE only; clip negatives, renormalize |
| `value_added` | country | sum VA_long by country |
| `trade_balance` | country | `join(exports, imports, how="full", validate="1:1")` |

**Critical:** sector T (households) has zero gross output → VA/OUT = NaN/Inf → filter then fill
back with 1−1e-4. Same sector must be padded into `intermediate_share` dims (as 0) so KITE array
dimensions are conformable across all 50 sectors.

---

## Step 3: Trade Elasticities  ✓

**Source:** Downloaded from https://sites.google.com/view/product-level-trade-elasticity/home  
**File:** `data/raw/fontagne_elasticities/icio_elast.dta`  
**Version:** March 2026 update (ICIO 2025 sector codes, `icio2025` column)  
**Script:** `data/03_elasticities.R`

Use `epsilon_icio` (overall, not split by final/intermediate). Take |ε| for Fréchet θ. 32 of 50
sectors have estimates; fallbacks by sector group (A02→A01/A03 avg; B09→B-sector avg; D/E→goods
median; all services→3.0).

**Note:** `epsilon_icio_final` and `epsilon_icio_intermediate` columns also available for future
extensions; the single-θ CP2015 model uses only the overall estimate.

---

## Steps 4–5: Tariffs (combined script)  ✓

**Source:** `data/raw/macmap_tariffs/Tariffs_2001_2019.zip` (CEPII MAcMap-HS6, 2.9 GB)  
**Script:** `data/04_05_tariffs.R`

1. Build HS6→ICIO concordance: `hs3_sitc3` (R `concordance` pkg) gives HS2007→SITC Rev.3, then
   manual 44-entry SITC2d→ICIO table + 3-digit overrides (ships, refined petroleum, coal).
   `join(hs_sitc, sitc2d_icio, on="sitc2d", how="left")` + DT update for 3-digit overrides.
2. Stream `mmhs6_2019.csv` (3.6 GB) via `7z e -so | fread(cmd=...)`. Column `adv` is decimal
   (0.05 = 5%); KITE multiplier = 1 + adv.
3. Load country list dynamically from `02_trade_share.rds` (81 countries including STP).
   `join(tariff_raw, hs_icio, on="hs6_code", how="inner")` for sector mapping.
4. Aggregate to sector level (simple average; no trade weights in 2019 file).
5. Expand to full 81×81×50 grid with `join(all_combos, tariff_sector, how="left")`; missing → 1.

Result: 328,050 rows, mean multiplier 1.015, value range [1, 1.978].

---

## Step 6: Assemble  ✓

**Script:** `data/06_assemble.R`

Validation checks:
- trade_share sums to 1 ✓
- consumption_share sums to 1 ✓
- intermediate_share sums to 1 (or 0 for 122 inactive sector-country pairs) ✓
- trade_balance global sum = 0 ✓
- All tariffs ≥ 1 ✓
- All elasticities > 0 ✓
- All value_added > 0 ✓
- factor_share ∈ (0, 1) ✓

---

## Step 7: Smoke-Test  ✓

**Script:** `data/07_test_run.R`

Uses `library(data.table); library(cli); lapply(list.files("R",...), source)` instead of
`devtools::load_all(".")` because pkgload's `load_data()` sources all `data/*.R` files in the
package's restricted namespace environment, causing `utils::unzip` and similar to be unavailable.

CP2015 null scenario: converged in 25 iterations / 3.7 s, criterion 9.4e-5 < 1e-4. ✓

---

## Raw Data Files

| File | Description |
|---|---|
| `.../OECD_ICIOs/2016-2022_SML.zip` | OECD ICIO 2025 SML, years 2016–2022 |
| `data/raw/fontagne_elasticities/icio_elast.dta` | Trade elasticities, ICIO 2025 sectors, Mar 2026 |
| `data/raw/macmap_tariffs/Tariffs_2001_2019.zip` | CEPII MAcMap-HS6, all years 2001–2019 |
