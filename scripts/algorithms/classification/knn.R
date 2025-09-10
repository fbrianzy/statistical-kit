
suppressPackageStartupMessages({library(tidyverse); library(class)})
source(file.path("utils","data_loading.R")); source(file.path("utils","metrics.R")); source(file.path("utils","helpers.R"))
seed_everything(22)
df <- read_csv_safely(file.path("data","iris_sample.csv")) %>% mutate(species=factor(species))
idx <- sample(seq_len(nrow(df)), 0.7*nrow(df)); train <- df[idx,]; test <- df[-idx,]
x_train <- as.matrix(train %>% select(-species)); y_train <- train$species
x_test <- as.matrix(test %>% select(-species)); y_test <- test$species
pred <- class::knn(train=x_train, test=x_test, cl=y_train, k=5)
print(classification_metrics_simple(y_test, pred))
