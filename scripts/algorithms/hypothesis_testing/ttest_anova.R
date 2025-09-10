
suppressPackageStartupMessages({library(tidyverse)})
source(file.path("utils","data_loading.R"))
df <- read_csv_safely(file.path("data","iris_sample.csv"))
df <- df %>% mutate(is_setosa = if_else(species=='setosa','setosa','non_setosa'))
print(t.test(petal_length ~ is_setosa, data=df))
print(summary(aov(petal_length ~ species, data=df)))
