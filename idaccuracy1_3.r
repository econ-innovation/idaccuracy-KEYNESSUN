#! /usr/bin/env Rscript

args = commandArgs(TRUE)
aminer_path = args[1]

library(readr)

setwd(aminer_path)

Aminer_name = list.files(aminer_path)

Aminer_list = lapply(Aminer_name,read.csv)

apply_Aminer_data = do.call(rbind,Aminer_list)

write.csv(apply_Aminer_data,file = "apply_Aminer_data.csv")