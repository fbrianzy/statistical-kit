
suppressPackageStartupMessages({library(tidyverse); library(glmnet)})
source(file.path("utils","data_loading.R")); source(file.path("utils","helpers.R"))
seed_everything(9)
df <- read_csv_safely(file.path("data","iris_sample.csv"))
x <- as.matrix(df %>% select(sepal_length, sepal_width, petal_width))
y <- df$petal_length
lasso <- cv.glmnet(x, y, alpha=1, nfolds=5)
ridge <- cv.glmnet(x, y, alpha=0, nfolds=5)
print(list(lasso_lambda_min=lasso$lambda.min, ridge_lambda_min=ridge$lambda.min))
