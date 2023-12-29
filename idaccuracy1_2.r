# 2.使用apply家族函数替代上述步骤中的for循环
library(readr)

idaccuracy_path = "E:/Rstudio/data/assignment_idaccuracy"
aminer_path = "E:/Rstudio/data/assignment_idaccuracy/Aminer"
setwd(aminer_path)

Aminer_name = list.files(aminer_path)

Aminer_list = lapply(Aminer_name,read.csv)

setwd(idaccuracy_path)

apply_Aminer_data = do.call(rbind,Aminer_list)
