# KITE `initial_conditions` Data Format

This document specifies the required format for the `initial_conditions` list passed to
`update_equilibrium()`. All tables are `data.table` objects in **long format** with a `value`
column. Country codes are ISO 3-letter (e.g. `AGO`, `USA`, `ROW`); sector codes follow the OECD
ICIO 2025 SML classification (50 ISIC Rev. 4 aggregate sectors, e.g. `A01`, `C10T12`).

Internally, `cast_variable()` converts each table to a named multi-dimensional array before the
solver runs. The dimension order follows `c("country","origin","destination","sector","input","output")`,
so column naming in the data.table must match exactly.

---

## Required Variables

### `trade_share` — origin × destination × sector

**Definition:** π_{od}^s — share of total expenditure on sector-s goods in destination d sourced
from origin o.

| Column | Type | Description |
|---|---|---|
| `origin` | character | Exporting / producing country |
| `destination` | character | Importing / absorbing country |
| `sector` | character | ICIO sector code |
| `value` | numeric | Share in [0, 1] |

**Constraint:** For each (destination, sector) pair, `sum(value) == 1` (shares over all origins sum
to one). Self-trade (origin == destination) is included.

**Source:** Computed from ICIO intermediate flows Z and total final demand Y aggregated over demand
types. See `data/02_compute_io_vars.R` step 1.

---

### `intermediate_share` — input × output × country

**Definition:** γ_{k,j}^d — share of total intermediate inputs to sector j in country d that come
from sector k (summed across all origin countries).

| Column | Type | Description |
|---|---|---|
| `input` | character | Sector providing the intermediate input (k) |
| `output` | character | Sector receiving the intermediate input (j) |
| `country` | character | Country |
| `value` | numeric | Share in [0, 1] |

**Constraint:** For each (output, country), `sum(value) == 1` over all inputs. Sectors with zero
gross output (e.g. household sector T) are padded with 0 for all input combinations; their
(1 − factor_share) term in the model is ≈ 0 so the zeros are inconsequential.

**Dimension requirement:** Must cover all sectors that appear in `trade_share$sector` in **both**
input and output dimensions, so that `cast_variable()` produces a conformable [n_sector × n_sector]
slice per country.

**Source:** `data/02_compute_io_vars.R` step 4.

---

### `factor_share` — country × sector

**Definition:** β_d^s — value-added (labor) cost share in gross output: VA_{d,s} / OUT_{d,s}.

| Column | Type | Description |
|---|---|---|
| `country` | character | Country |
| `sector` | character | ICIO sector code |
| `value` | numeric | Share in (0, 1) |

**Constraint:** Must cover all (country, sector) combinations that appear in `trade_share`. Sectors
with zero gross output are filled with `1 − 1e-4` (treated as pure value-added). Values clipped to
(1e-4, 1 − 1e-4).

**Source:** `data/02_compute_io_vars.R` step 3.

---

### `consumption_share` — country × sector

**Definition:** α_d^s — share of household final consumption expenditure in country d spent on
sector-s goods.

| Column | Type | Description |
|---|---|---|
| `country` | character | Country |
| `sector` | character | ICIO sector code |
| `value` | numeric | Share in [0, 1] |

**Constraint:** For each country, `sum(value) == 1`. Computed from HFCE columns only; negative
values (ICIO adjustment items) clipped to 0 then renormalized.

**Source:** `data/02_compute_io_vars.R` step 5.

---

### `expenditure` — country × sector

**Definition:** X_d^s — total demand for sector-s goods in country d (intermediate + all final
demand types, in USD millions).

| Column | Type | Description |
|---|---|---|
| `country` | character | Country (= destination in trade_share) |
| `sector` | character | ICIO sector code |
| `value` | numeric | USD millions |

**Note:** This is the denominator used to normalize `trade_share`; it equals
`trade_share[, .(value = sum(value * expenditure)), by = .(origin, sector)]` when back-calculated.

**Source:** `data/02_compute_io_vars.R` step 2.

---

### `value_added` — country

**Definition:** w_d × L_d — total value added by country d (in USD millions).

| Column | Type | Description |
|---|---|---|
| `country` | character | Country |
| `value` | numeric | USD millions, must be > 0 |

**Source:** `data/02_compute_io_vars.R` step 6.

---

### `trade_balance` — country

**Definition:** D_d — aggregate trade surplus (+) or deficit (−) for country d, in USD millions.
Treated as exogenous (fixed or updated via `trade_balance_rule`).

| Column | Type | Description |
|---|---|---|
| `country` | character | Country |
| `value` | numeric | USD millions; `sum(value) ≈ 0` globally |

**Source:** `data/02_compute_io_vars.R` step 7.

---

### `tariff` — origin × destination × sector

**Definition:** τ_{od}^s — ad-valorem tariff multiplier (1 + rate). No tariff = 1.0.

| Column | Type | Description |
|---|---|---|
| `origin` | character | Exporting country |
| `destination` | character | Importing country |
| `sector` | character | ICIO sector code |
| `value` | numeric | ≥ 1; self-trade rows have value = 1 |

**Constraint:** Must cover all (origin, destination, sector) combinations including self-trade.
Service sectors and non-traded goods use value = 1. `tariff_new` in `model_scenario` has the same
format and represents counterfactual tariffs.

**Source:** `data/04_05_tariffs.R` — CEPII MAcMap-HS6 2019 aggregated via HS6→SITC3→ICIO
concordance. Missing bilateral pairs default to 1.0.

---

### `elasticities$trade_elasticity` — sector

**Definition:** θ^s — Fréchet shape parameter (trade elasticity) for sector s. Higher values imply
stronger comparative advantage effects and larger trade responses to cost changes.

| Column | Type | Description |
|---|---|---|
| `sector` | character | ICIO sector code |
| `value` | numeric | > 0; typically 1–15 |

**Convention:** Pass as `elasticities = list(trade_elasticity = ...)` inside `initial_conditions`,
or at top level — `update_equilibrium()` will nest it automatically via `nest_elasticity_variables()`.

**Source:** `data/03_elasticities.R` — Fontagné et al. (2022) `icio_elast.dta`, March 2026 version
(`icio2025` sector codes). Uses `|epsilon_icio|` (overall, not split by final/intermediate).
18 sectors without estimates receive fallbacks by sector group.

---

## Optional Variables

These are created internally from the above if not supplied, or can be overridden in `model_scenario`:

| Variable | Dims | Default | Description |
|---|---|---|---|
| `tariff_new` | O×D×S | copy of `tariff` | Counterfactual tariffs |
| `ntb` | O×D×S | 1.0 everywhere | Non-tariff barriers multiplier |
| `ntb_new` | O×D×S | copy of `ntb` | Counterfactual NTBs |
| `export_subsidy` | O×D×S | 1.0 everywhere | Export subsidy/tax multiplier (< 1 = subsidy) |
| `export_subsidy_new` | O×D×S | copy | Counterfactual export subsidies |
| `productivity_change` | C×S | 1.0 | Exogenous productivity shock |
| `population_change` | C | 1.0 | Exogenous population/labour supply shock |
| `coalition_member` | C | — | Integer 0/1 flag (CHKW2022 model only) |

---

## Assembly

```r
initial_conditions <- list(
  trade_share        = trade_share,        # origin × destination × sector
  intermediate_share = intermediate_share, # input × output × country
  factor_share       = factor_share,       # country × sector
  consumption_share  = consumption_share,  # country × sector
  expenditure        = expenditure,        # country × sector
  value_added        = value_added,        # country
  trade_balance      = trade_balance,      # country
  tariff             = tariff,             # origin × destination × sector
  elasticities = list(
    trade_elasticity = trade_elasticity    # sector
  )
)
saveRDS(initial_conditions, "data/initial_conditions_2022.rds")
```

---

## Validation Checklist

```r
# trade_share sums to 1 per (destination, sector)
trade_share[, .(s = sum(value)), by = .(destination, sector)][, all(abs(s - 1) < 1e-5)]

# consumption_share sums to 1 per country
consumption_share[, .(s = sum(value)), by = country][, all(abs(s - 1) < 1e-5)]

# intermediate_share sums to 1 (or 0 for inactive sectors) per (output, country)
intermediate_share[, .(s = sum(value)), by = .(output, country)][, all(abs(s - 1) < 1e-5 | s == 0)]

# trade_balance global sum ≈ 0
abs(sum(trade_balance$value)) < 1

# tariff values all ≥ 1
tariff[, all(value >= 1)]

# trade elasticities all > 0
trade_elasticity[, all(value > 0)]

# value_added all positive
value_added[, all(value > 0)]

# factor_share ∈ (0, 1)
factor_share[, all(value > 0 & value < 1)]
```

---

## Baseline Database: 2022

**File:** `data/initial_conditions_2022.rds` (4.4 MB)  
**Countries:** 81 (80 ISO + ROW, including STP = São Tomé & Príncipe added in ICIO 2025)  
**Sectors:** 50 (OECD ICIO 2025 SML classification, ISIC Rev. 4 aggregates)  
**Baseline year:** 2022  
**Tariff year:** 2019 (most recent MAcMap-HS6 pre-COVID)  
**Build scripts:** `data/01_parse_icio.R` through `data/06_assemble.R`
