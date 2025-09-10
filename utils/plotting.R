
suppressPackageStartupMessages({library(ggplot2)})
gg_scatter <- function(df, x, y, color=NULL) {
  aes_args <- aes_string(x=x, y=y, color=color)
  ggplot(df, aes_args) + geom_point() + theme_minimal()
}
gg_hist <- function(df, x, bins=30) {
  ggplot(df, aes_string(x=x)) + geom_histogram(bins=bins) + theme_minimal()
}
gg_line <- function(df, x, y) {
  ggplot(df, aes_string(x=x, y=y)) + geom_line() + theme_minimal()
}
