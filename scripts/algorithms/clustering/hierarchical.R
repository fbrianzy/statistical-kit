
suppressPackageStartupMessages({library(tidyverse)})
source(file.path("utils","data_loading.R"))
df <- read_csv_safely(file.path("data","iris_sample.csv"))
d <- dist(scale(df %>% select(where(is.numeric))))
hc <- hclust(d, method="ward.D2")
print(head(hc$merge))
