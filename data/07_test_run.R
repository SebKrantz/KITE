# 07_test_run.R
# Smoke-test the assembled initial_conditions with the KITE model.
# A null scenario (no policy change) should converge quickly with ~0% welfare change.

# Load KITE functions directly (devtools::load_all sources all data/*.R scripts as package
# data generators, which breaks when those scripts call utils functions in a restricted env)
library(data.table)
library(cli)
invisible(lapply(list.files("R", pattern = "\\.R$", full.names = TRUE), source))

ic <- readRDS("data/initial_conditions_2022.rds")
cat("Loaded initial_conditions_2022.rds\n")
cat("Countries:", length(unique(ic$trade_share$origin)), "\n")
cat("Sectors:", length(unique(ic$trade_share$sector)), "\n")

cat("\nRunning null scenario (no policy change) with Caliendo-Parro 2015...\n")
result <- update_equilibrium(
  model              = caliendo_parro_2015,
  initial_conditions = ic,
  model_scenario     = list(),
  settings           = list(
    max_iterations = 100,
    tolerance      = 1e-4,
    vfactor        = 0.3,
    verbose        = 2
  )
)

cat("\n--- Results ---\n")
cat("Converged:", result$info$convergence, "\n")
cat("Iterations:", result$info$iterations, "\n")
cat("Final criterion:", round(result$info$criterion, 8), "\n")
cat("Elapsed:", round(result$info$elapsed_seconds, 1), "s\n")

proc <- process_results(result)
cat("\nWelfare changes (should be ~0 for null scenario):\n")
if (!is.null(proc$welfare)) print(head(proc$welfare, 10))
