
suppressPackageStartupMessages({library(tidyverse); library(MASS)})
source(file.path("utils","data_loading.R")); source(file.path("utils","metrics.R")); source(file.path("utils","helpers.R"))
seed_everything(11)
df <- read_csv_safely(file.path("data","iris_sample.csv")) %>% mutate(species=factor(species))
set.seed(11); idx <- sample(seq_len(nrow(df)), 0.7*nrow(df)); train <- df[idx,]; test <- df[-idx,]
lda_fit <- lda(species ~ sepal_length + sepal_width + petal_length + petal_width, data=train)
qda_fit <- qda(species ~ sepal_length + sepal_width + petal_length + petal_width, data=train)
lda_pred <- predict(lda_fit, test)$class; qda_pred <- predict(qda_fit, test)$class
print(list(
  lda = classification_metrics_simple(test$species, lda_pred),
  qda = classification_metrics_simple(test$species, qda_pred)
))
