
suppressPackageStartupMessages({library(readr); library(dplyr); library(janitor)})
read_csv_safely <- function(path) {
  stopifnot(file.exists(path))
  readr::read_csv(path, show_col_types = FALSE) |> janitor::clean_names() |> dplyr::as_tibble()
}
read_rds_safely <- function(path) { stopifnot(file.exists(path)); readRDS(path) }
