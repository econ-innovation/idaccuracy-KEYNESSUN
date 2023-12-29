# 作业1

# 1.使用R中的数据读写，文件路径，for循环语句，读入路径“/assignment_idaccuracy/Aminer”总的所有文件，并将数据合并成为一个data.frame输出。
library(readr)

idaccuracy_path = "E:/Rstudio/data/assignment_idaccuracy"
aminer_path = "E:/Rstudio/data/assignment_idaccuracy/Aminer"
setwd(aminer_path)

Aminer_name = list.files(aminer_path)

Aminer_data = data.frame()

for (i in Aminer_name) {
  temp = read.csv(i)
  Aminer_data = rbind(Aminer_data,temp)
}

setwd(idaccuracy_path)
write.csv(Aminer_data,file = "Aminer_data.csv")

