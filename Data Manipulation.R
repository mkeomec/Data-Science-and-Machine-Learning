#Dplyr 
install.packages("dplyer")
install.packages("nycflights13")
library(dplyr)
library(nycflights13)
head(flights)
summary(flights)

#filter allows subsetting of dataframe
head(filter(flights,month==11,day==3,carrier=='AA'))

#slice allows slicing by position (rows)
slice(flights,1:10)

#arrange reorders 
head(arrange(flights,year,month,day,arr_time))
head(arrange(flights,year,month,day,desc(arr_time)))

#Select
head(select(flights,carrier,arr_time))

#Rename renames columns
head(rename(flights,airline_carrier=carrier))

#Distinct select distinct or unique values in column or table
distinct(select(flights,carrier))

#Mutate create new columns that can be built off old columns
mutate(flights,new_col= arr_delay-dep_delay)

#Transmute only returns new column
transmute(flights,new_col= arr_delay-dep_delay)

#Summarise aggregate data
summarise(flights,avg_airtime=mean(air_time,na.rm=TRUE))

summarise(flights,total_airtime=sum(air_time,na.rm=TRUE))

#sample_n() returns a random number of rows
sample_n(flights,10)

#sample_frac return a fraction of rows
sample_frac(flights,0.1)

#PIPE OPERATOR
df <- mtcars
# Nesting Hard to read and messy to interpret. Have to read from the inside out
result <- arrange(sample_n(filter(df,mpg>20),size=5),desc(mpg))

#multiple assignments
a <- filter(df,mpg>20)
b <- sample_n(a,size=5)
results <- arrange(b,desc(mpg))

#pipe operator
#data %>% op1 %>% op2 %>% op3

result <- df %>% filter(mpg>20) %>% sample_n(size=5) %>% arrange(desc(mpg))

