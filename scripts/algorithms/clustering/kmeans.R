
suppressPackageStartupMessages({library(tidyverse)})
source(file.path("utils","data_loading.R")); source(file.path("utils","helpers.R"))
seed_everything(5)
df <- read_csv_safely(file.path("data","iris_sample.csv"))
num <- df %>% select(where(is.numeric))
km <- kmeans(scale(num), centers=3, nstart=20)
print(table(km$cluster, df$species))
