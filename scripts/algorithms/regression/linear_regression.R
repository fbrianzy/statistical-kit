
suppressPackageStartupMessages({library(tidyverse); library(broom)})
source(file.path("utils","data_loading.R")); source(file.path("utils","metrics.R")); source(file.path("utils","helpers.R"))
seed_everything(123)
df <- read_csv_safely(file.path("data","iris_sample.csv")) %>% mutate(species=factor(species))
fit <- lm(petal_length ~ sepal_length + species, data=df)
aug <- augment(fit)
print(summary(fit))
print(regression_metrics_simple(truth=df$petal_length, estimate=aug$.fitted))
