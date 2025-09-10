
suppressPackageStartupMessages({library(tidyverse); library(forecast)})
sales <- readr::read_csv(file.path("data","sales_time_series.csv"), show_col_types = FALSE)
ts_obj <- ts(sales$sales, frequency=7)
fit <- ets(ts_obj)
fc <- forecast(fit, h=14)
print(fit)
print(head(fc$mean))
