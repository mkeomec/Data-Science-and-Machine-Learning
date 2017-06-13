state.x77
USPersonalExpenditure
women
data()
DNase
head(state.x77)
str(state.x77)
summary(state.x77)
days <- c('Mon','Tues','Wed','Thur','Fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(T,T,F,F,T)
df <- data.frame(days,temp,rain)
str(df)
summary(df)
df[1,]
df[,1]
df[1:5,c('days','temp')]
df$days
df$temp
df['days']
subset(df,subset=rain==TRUE)
subset(df,subset=temp>23)
sorted.temp <- order(df['temp'])
df[sorted.temp,]
desc.temp <- order(-df['temp'])
df[desc.temp,]
desc.temp <- order(-df$temp)
desc.temp
df[desc.temp,]
desc.temp <- order(-df$temp)
