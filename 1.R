
setwd("~/Desktop/Tutorial R/Perikanan")

library(tidyverse)  #untuk pembacaan file yg lebih baik dari modul standar yg tersedia di R
library(lubridate)  #untuk menipulasi Date dengan mudah

landings_data <- read_csv("_data/sample_landings_data_raw.csv")
landings_data
