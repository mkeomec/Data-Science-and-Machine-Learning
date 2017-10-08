install.packages('ISLR')
library(ISLR)
str(Caravan)
summary(Caravan$Purchase)
any(is.na(Caravan))

#check variance
var(Caravan[,1])
var(Caravan[,2])

#standardize variables
purchase <- Caravan[,'Purchase']
standardized.Caravan <- scale(Caravan[,-86])
var(standardized.Caravan[,1])
var(standardized.Caravan[,2])

#split data
#test
test.index <- 1:1000
test.data <- standardized.Caravan[test.index,]
test.purchase <- purchase[test.index]

#train
train.data <- standardized.Caravan[-test.index,]
train.purchase <- purchase[-test.index]

plot(test.data)
plot(train.data)


head(test.data)
# KNN Model

library(class)
set.seed(101)

predicted.purchase <- knn(train.data,test.data,train.purchase,k=5)
head(predicted.purchase)

misclass.error <- mean(test.purchase!= predicted.purchase)

misclass.error

#Choose a k value

predicted.purchase <- NULL
error.rate <- NULL
for(i in 1:20){
    set.seed(101)
    predicted.purchase <- knn(train.data,test.data,train.purchase,k=i)
    error.rate[i] <- mean(test.purchase!=predicted.purchase)
}
error.rate

#Visualize elbow method
library(ggplot2)
k.values <- 1:20
error.df <- data.frame(error.rate,k.values)
error.df
ggplot(error.df,aes(k.values,error.rate))+geom_point()+geom_line(lty='dotted',color='red')

