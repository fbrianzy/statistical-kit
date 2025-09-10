
suppressPackageStartupMessages({library(tidyverse); library(caret)})
source(file.path("utils","data_loading.R"))
set.seed(10)
df <- read_csv_safely(file.path("data","iris_sample.csv")) %>% mutate(species=factor(species))
ctrl <- trainControl(method='cv', number=5)
fit <- caret::train(species ~ ., data=df, method='rf', trControl=ctrl)
print(fit)
