# KITE Baseline Database — 2022

Build scripts and intermediate outputs for `initial_conditions_2022.rds`, the
calibrated baseline for the KITE trade model suite. Re-running the scripts in
order regenerates everything from the raw sources.

**Coverage:** 81 countries × 50 ICIO sectors, baseline year 2022, tariffs from 2019.

---

## Raw Data

Place the following in `data/raw/` before running (not tracked by git):

| Path | Description | Source |
|---|---|---|
| `/Users/sebastiankrantz/Documents/Data/OECD_ICIOs/2016-2022_SML.zip` | OECD ICIO 2025 SML tables | OECD.Stat |
| `raw/fontagne_elasticities/icio_elast.dta` | Trade elasticities, ICIO 2025 sectors | [Fontagné et al. (2022)](https://sites.google.com/view/product-level-trade-elasticity/home) — March 2026 update |
| `raw/macmap_tariffs/Tariffs_2001_2019.zip` | CEPII MAcMap-HS6 bilateral tariffs | [CEPII MAcMap](https://www.cepii.fr/cepii/en/bdd_modele/bdd_modele_item.asp?id=12) |

`7z` / `p7zip` must be installed (`brew install p7zip`) — the MAcMap ZIP is ZIP64
(2.9 GB) which macOS `unzip` cannot handle, and the CSV is streamed directly into
R without writing the 3.6 GB uncompressed file to disk.

---

## Scripts

Run in order from the repo root with `Rscript data/<script>.R`.

### `01_parse_icio.R`
Extracts `2022_SML.csv` from the OECD ZIP using `p7zip` and melts the wide
4053 × 4538 ICIO matrix into four long-format tables:

| Output | Rows | Description |
|---|---|---|
| `01_Z_long.rds` | ~9.8 M | Intermediate flow matrix (origin × sector → destination × sector) |
| `01_Y_long.rds` | ~1.3 M | Final demand matrix (6 demand types: HFCE, NPISH, GGFC, GFCF, INVNT, DPABR) |
| `01_VA_long.rds` | 4 050 | Value added by (country, sector) |
| `01_OUT_long.rds` | 4 050 | Gross output by (country, sector) |

Row identifiers in the CSV are `COUNTRY_SECTOR` (e.g. `AGO_A01`), `COUNTRY_VA`,
or `COUNTRY_OUT`; columns are `COUNTRY_SECTOR` pairs plus final demand columns.

### `02_compute_io_vars.R`
Computes all IO-derived KITE variables from the four long tables.
Uses `collapse::join(..., verbose=2)` for all merges — read the printed match
rates to verify data integrity at each step.

| Output | Dims | Description |
|---|---|---|
| `02_trade_share.rds` | O×D×S | π_{od}^s: bilateral expenditure share by sector |
| `02_expenditure.rds` | C×S | X_d^s: total sectoral expenditure |
| `02_factor_share.rds` | C×S | β_d^s: value-added share of gross output |
| `02_intermediate_share.rds` | I×O×C | γ_{k,j}^d: intermediate input composition shares |
| `02_consumption_share.rds` | C×S | α_d^s: household consumption shares (HFCE only) |
| `02_value_added.rds` | C | Total VA by country (USD mn) |
| `02_trade_balance.rds` | C | Net trade position by country (USD mn) |

**Sector T note:** Household activities (T) has zero gross output in all
countries. `factor_share` is padded to the full 81 × 50 grid with value
`1 − 1e-4` for T (pure value-added). `intermediate_share` is padded to the full
50 × 50 × 81 grid with zeros for T rows; the model multiplies these by
`(1 − factor_share) ≈ 0`, so the zeros are inconsequential but the array
dimensions must be conformable.

### `03_elasticities.R`
Loads `icio_elast.dta` (Fontagné et al., March 2026 update). Takes
`|epsilon_icio|` (overall estimate, not split by final/intermediate) as the
Fréchet trade elasticity θ^s. 32 of 50 sectors have estimates; the remaining 18
(mostly services) receive fallbacks:

- A02 (forestry) → average of A01 and A03
- B09 (mining support) → average of B05–B08
- D, E → goods-sector median
- All other services → 3.0 (standard assumption for non-tradeable services)

Output: `03_trade_elasticity.rds` (50 sectors, range 1.4–14.8).

### `04_05_tariffs.R`
Builds the full bilateral tariff table from MAcMap-HS6 2019 in three stages:

1. **HS6 → ICIO concordance** via the `concordance` R package (`hs3_sitc3` table:
   HS 2007 → SITC Rev. 3) plus a manual 44-entry SITC 2-digit → ICIO mapping
   table with 3-digit overrides for ambiguous sectors (refined vs. crude
   petroleum, ships vs. aircraft, coal grades). Covers 26 tradeable ICIO sectors.

2. **Load tariffs** — streams `mmhs6_2019.csv` (3.6 GB uncompressed) via
   `7z e -so | fread(cmd=...)` without writing to disk. Column `adv` is a decimal
   fraction (0.05 = 5%). 144 M rows loaded; 57 K with unrecognized HS6 codes
   dropped (inner join).

3. **Aggregate and fill** — simple average over HS6 codes within each
   (origin, destination, sector) cell (no trade weights available in the 2019
   file). Country list loaded dynamically from `02_trade_share.rds` (81 countries
   including STP). Non-ICIO countries aggregated into ROW. Full 81 × 81 × 50 grid
   filled: missing bilateral pairs and all service sectors → 1.0 (no tariff).
   KITE multiplier format: `value = 1 + adv`.

Output: `04_tariff.rds` (328 050 rows, mean multiplier 1.015, max 1.978).

### `06_assemble.R`
Loads all outputs above, runs 8 validation checks, and saves the final list:

```
initial_conditions_2022.rds  (4.4 MB)
```

Validation: trade/consumption/intermediate shares sum correctly; trade balance
sums to ~0 globally; all tariffs ≥ 1; all elasticities > 0; value added > 0;
factor shares ∈ (0, 1).

### `07_test_run.R`
Smoke-test: runs the CP2015 null scenario (no policy change) and checks
convergence. Expected: ≤ 30 iterations, criterion < 1e-4, ~3–5 s elapsed.

**Note:** Uses `lapply(list.files("R", ...), source)` instead of
`devtools::load_all()` because `pkgload` sources all `data/*.R` files as package
data generators, which fails in a restricted namespace environment.

---

## Coding Convention

All table merges use `collapse::join(..., verbose=2)`. The printed match rates
(e.g. `144308800/144365952 (99.96%)`) serve as inline data-integrity checks —
review them before accepting a script's output.
