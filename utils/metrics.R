
suppressPackageStartupMessages({library(yardstick); library(dplyr)})
regression_metrics_simple <- function(truth, estimate) {
  dplyr::tibble(
    rmse = yardstick::rmse_vec(truth, estimate),
    mae  = yardstick::mae_vec(truth, estimate),
    rsq  = yardstick::rsq_vec(truth, estimate)
  )
}
classification_metrics_simple <- function(truth, estimate) {
  truth <- factor(truth)
  estimate <- factor(estimate, levels=levels(truth))
  dplyr::tibble(
    accuracy = yardstick::accuracy_vec(truth, estimate),
    kap      = yardstick::kap_vec(truth, estimate)
  )
}
