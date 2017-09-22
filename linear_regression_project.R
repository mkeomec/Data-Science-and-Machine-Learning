#linear regression project
library(ggplot2)
library(dplyr)
setwd("C:/Users/cwbishop/Documents/GitHub/DataScienceandMachineLearning/Data-Science-and-Machine-Learning-Bootcamp")

train <- read.csv('train.csv')
test<- read.csv('test.csv')
bike <- train
head(bike)
temp_count_plot <- ggplot(data=bike,aes(x=temp,y=count))
temp_count_plot + geom_point(aes(color=temp),alpha=0.3)

bike$datetime <- as.POSIXct(bike$datetime)
date_count_plot <- ggplot(data=bike,aes(x=datetime,y=count))
date_count_plot + geom_point(aes(color=temp),alpha=0.3)

cor.data <- cor(bike[,c('temp','count')])
cor.data

pl <- ggplot(bike, aes(factor(season), count,fill=factor(season)))

pl + geom_boxplot(color=c('red','green','blue','purple'))

bike$datetime[4]
time.stamp <- bike$datetime[4]
format(time.stamp, "%H")
bike$hour = format(as.POSIXct(bike$datetime,format="%H:%M:%S"),"%H")


work_day <- subset(bike,workingday==1)
p2 <- ggplot(data=work_day,aes(x=hour,y=count))
p2+geom_point(aes(color=temp),position=position_jitter(w=1, h=0)) + scale_colour_gradientn(colors=c('black','blue','green','yellow','orange','red'))

not_work_day <- subset(bike,workingday==0)
p3 <- ggplot(data=not_work_day,aes(x=hour,y=count))
p3+geom_point(aes(color=temp),position=position_jitter(w=1, h=0)) + scale_colour_gradientn(colors=c('black','blue','green','yellow','orange','red'))

temp.model <- lm(count~temp,data=bike)
summary(temp.model)
bike_25 <- temp.model[[1]][2]*25+temp.model[[1]][1]
temp_test <- data.frame("temp"=25)
predict(mod,temp_test)

bike$hour <- sapply(bike$hour,as.numeric)


count_mod <- lm(formula = count ~ . - casual - registered - datetime - atemp, data = bike)
summary(count_mod)
