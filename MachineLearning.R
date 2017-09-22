# Linear regression

install.packages('ggthemes')
install.packages('corrgram')
install.packages('corrplot')
install.packages('ggthemes')


df <- read.csv('C:/Users/ML/Dropbox/Work/Data-learn/R-for-Data-Science-and-Machine-Learning/Machine Learning with R/student-mat.csv',sep=';')
head(df)
summary(df)

#check for NA values
any(is.na(df))
str(df)

library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrgram)
library(corrplot)

#num only
num.cols <- sapply(df,is.numeric)
#filter
cor.data <- cor(df[,num.cols])
print(cor.data)

print(corrplot(cor.data,method='color'))
corrgram(df)
?corrgram
corrgram(df,order=TRUE,lower.panel=panel.shade,upper.panel=panel.pie, test.panel=panel.txt)

ggplot(df,aes(x=G3))+geom_histogram(bins=20,alpha=0.5,fill='blue')

#Split data into train and test set
install.packages('caTools')
library(caTools)
#Set a Seed
set.seed(101)
#split up sample
sample <- sample.split(df$G3,SplitRatio=0.7)
sample
#70% of data -> train
train <- subset(df,sample==TRUE)
#30% will be test
test <- subset(df,sample==FALSE)

#The general model of building a linear regression model in R
# model <- lm(y~x1+x2,data)
# To use all the features in your data
# model <- lm(y~.,data)

# Train and build model

model <- lm(G3~.,train)
summary(model)
res <- residuals(model)
class(res)
res
res <- as.data.frame(res)
head(res)
ggplot(res,aes(res))+geom_histogram(fill='blue',alpha=0.5)

plot(model)

#Predictions
G3.predictions <- predict(model,test)

results <- cbind(G3.predictions,test$G3)
colnames(results) <- c('predicted','actual')
results <- as.data.frame(results)
results

#take care of negative values

to_zero <- function(x){
    if (x<0){
        return(0)
    }else{
        return(x)
    }
}

#Apply zero function
results$predicted <- sapply(results$predicted,to_zero)
# Mean squared error
mse <- mean((results$actual-results$predicted)^2)
mse
mse^0.5

###########
SSE <- sum((results$predicted-results$actual)^2)
SST <- sum((mean(df$G3)-results$actual)^2)
R2 <- 1-SSE/SST
R2
