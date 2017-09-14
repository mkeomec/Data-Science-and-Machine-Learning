#Regular Expressions

#grepl
#grep

text <- "Hi there, do you know who you are voting for?"
grepl('voting',text)
grepl('dog',text)
grepl('do you',text)

v <- c('a','b','c','d','d')
grepl('b',v)
grep('b',v)
grep('d',v)
grep('voting',text)

#Dates and timestamps

Sys.Date()
today <- Sys.Date()
class(today)
c <- "1900-01-01"
class(c)
my.date <- as.Date(c)
class(my.date)
my.date <- as.Date("Nov-03-90",format="%b-%d-%y")
as.Date("June,01,2002",format="%B,%d,%Y")

as.POSIXct("11:02:03",format="%H:%M:%S")
#strptime

help(strptime)

strptime("11:02:03",format="%H:%M:%S")
