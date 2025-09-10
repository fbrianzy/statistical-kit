
suppressPackageStartupMessages({library(tidyverse); library(broom)})
source(file.path("utils","data_loading.R"))
df <- read_csv_safely(file.path("data","iris_sample.csv"))
num <- scale(df %>% select(where(is.numeric)))
p <- prcomp(num, center=TRUE, scale.=TRUE)
print(head(broom::tidy(p, matrix='pcs')))
