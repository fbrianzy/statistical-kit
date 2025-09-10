
suppressPackageStartupMessages({library(tidyverse)})
source(file.path("utils","data_loading.R"))
df <- read_csv_safely(file.path("data","iris_sample.csv"))
num <- df %>% select(where(is.numeric)) %>% scale() %>% as.data.frame()
onehot <- model.matrix(~ species - 1, data=df) %>% as.data.frame()
fe <- cbind(num, onehot)
print(head(fe))
