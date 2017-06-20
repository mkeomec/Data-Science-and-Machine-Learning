#Data input and output
ex <- read.csv('my_example.csv')
class(ex)
write.csv(ex,file='my_new_example.csv')

install.packages("readxl")
library(readxl)
excel_sheets('channel1.xlsx')
df <- read_excel('channel1.xlsx',sheet='Channel1')
head(df)
entire.workbook <- lapply(excel_sheets('channel1.xlsx'),read_excel,path="channel1.xlsx")

install.packages('xlsx')
library(xlsx)
write.xlsx(mtcars,file='output_example.xlsx')

install.packages('rvest')

