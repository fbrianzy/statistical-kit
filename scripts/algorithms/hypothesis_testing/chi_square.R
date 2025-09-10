
suppressPackageStartupMessages({library(tidyverse)})
source(file.path("utils","data_loading.R"))
df <- read_csv_safely(file.path("data","iris_sample.csv"))
df$petal_cat <- cut(df$petal_length, breaks=3, labels=c('short','medium','long'))
tbl <- table(df$species, df$petal_cat)
print(tbl); print(chisq.test(tbl))
