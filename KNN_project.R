library(ISLR)
library(caTools)
library(class)
library(ggplot2)
#Explore dataset Iris
head(iris)
str(iris)
var(iris[,1])
var(iris[,2])
iris[5]

#scale iris so variance is equal for KNN analysis
standardized.iris <- scale(iris[,-5])
head(standardized.iris)
var(standardized.iris[,1])
var(standardized.iris[,2])
standardized.iris <- as.data.frame(standardized.iris)
new.iris <- cbind(standardized.iris,iris[5])
head(new.iris)

#Split data into train and test sets
set.seed(101)
split <- sample.split(new.iris$Sepal.Length,SplitRatio = 0.7)
train.data <- subset(new.iris,split==TRUE)
test.data <-subset(new.iris,split==FALSE)

#KNN model
predicted <- knn(train.data[-5],test.data[-5],train.data$Species,k=1)
summary(predicted)

#Misclassifcation rate
misclass.error <- mean(test.data$Species!= predicted)
misclass.error

predicted.species <- NULL
error.rate <- NULL

for(i in 1:10){
    predicted.species <- knn(train.data[-5],test.data[-5],train.data$Species,k=i)
    error.rate[i] <- mean(test.data$Species!=predicted.species)
}
error.rate
k_values=1:10
error.df <- data.frame(error.rate,k_values)

p1 <- ggplot(error.df,aes(x=k_values,y=error.rate))+geom_point()
p1+geom_line(lty='dotted',color='red')

p2 <- ggplot(data=new.iris,aes(x=Sepal.Length,y=Sepal.Width))
p2+geom_point(aes(col=Species,size=4))
