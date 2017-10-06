#Laptop dir
library(dplyr)
library(forcats)
library(Amelia)
library(ggplot2)
library(caTools)
setwd("C:/Users/cwbishop/Documents/dropbox/Dropbox/Work/Data-learn/R-for-Data-Science-and-Machine-Learning/Training Exercises/Machine Learning Projects/CSV files for ML Projects")
#Desktop dir
setwd("C:/Users/ML/Dropbox/Work/Data-learn/R-for-Data-Science-and-Machine-Learning/Training Exercises/Machine Learning Projects/CSV files for ML Projects")
adult <- read.csv('adult_sal.csv')
head(adult)
adult <- select(adult,-X)
head(adult)
str(adult)
summary(adult)
table(adult$type_employer)
#Never worked and Without-pay are smallest groups

#create new factor level in adult$type_employer

levels(adult$type_employer) <- c(levels(adult$type_employer),'unemployed')
levels(adult$type_employer) <- c(levels(adult$type_employer),'self-emp')
levels(adult$type_employer) <- c(levels(adult$type_employer),'SL-gov')
#Combine Never worked and Without-pay into Unemployed group
unemployed <- c('Never-worked','Without-pay')
group_unemployed <- function(job){
    job <- as.character(job)
        if (job =='Never-worked'|job=='Without-pay'){
        return('unemployed')
        }else{
        return(job)
    }
}
adult$type_employer <- sapply(adult$type_employer,group_unemployed)


SL <- c('State-gov','Local-gov')
SL_f <- function(SL_jobs){
    if(SL_jobs=='State-gov'|SL_jobs=='Local-gov'){
        return('SL-gov')
    }else{
        return(SL_jobs)
    }
}


adult$type_employer <- sapply(adult$type_employer,SL_f)

#for(i in 1:nrow(adult)){
#   if (adult$type_employer[i]=='State-gov'|adult$type_employer[i]=='Local-gov'){
#        adult$type_employer[i] <- 'SL-gov'   
#    }
    
#}

#for(i in 1:nrow(adult)){
#    if (adult$type_employer[i]=='Self-emp-inc'|adult$type_employer[i]=='Self-emp-not-inc'){
#        adult$type_employer[i] <- 'self-emp'   
#    }
#    
#}

#Marital column
table(adult$marital)
Married <- c('Married-AF-spouse','Married-civ-spouse','Married-spouse-absent')
Not_Married <- c('Divorced','Widowed','Separated')

marry_group <- function(group){
    if (group %in% Married){
        return('Married')
    }else if(group %in% Not_Married){
        return('Not-Married')
    }else{
        return('Never-Married')
    }
}

adult$marital <- sapply(adult$marital,marry_group)    
table(adult$marital)

table(adult$country)

Asia <- c('China','Hong','India','Iran','Cambodia','Japan', 'Laos' ,
          'Philippines' ,'Vietnam' ,'Taiwan', 'Thailand')

North.America <- c('Canada','United-States','Puerto-Rico' )

Europe <- c('England' ,'France', 'Germany' ,'Greece','Holand-Netherlands','Hungary',
            'Ireland','Italy','Poland','Portugal','Scotland','Yugoslavia')

Latin.and.South.America <- c('Columbia','Cuba','Dominican-Republic','Ecuador',
                             'El-Salvador','Guatemala','Haiti','Honduras',
                             'Mexico','Nicaragua','Outlying-US(Guam-USVI-etc)','Peru',
                             'Jamaica','Trinadad&Tobago')
Other <- c('South')

group_country <- function(group){
    if (group %in% Asia){
        return('Asia')
    }else if (group %in% North.America){
        return('North.America')
    }else if (group %in% Europe){
        return('Europe')
    }else if (group %in% Latin.and.South.America){
        return('Latin.and.South.America')
    }else if (group %in% Other){
        return('Other')
    }else{
        return('Other')
    }
}

adult$country <- sapply(adult$country,group_country)
table(adult$country)

#Replace '?' with NA
adult[adult=='?'] <- 'NA'
table(is.na(adult))
#missmap to visualize NA values
missmap(adult,main='Missing Map',col=c('yellow','black'),legend=FALSE)
missmap(adult,y.at=c(1),y.labels = c(''),col=c('yellow','black'))
#na.omit to remove NA values
adult <- na.omit(adult)

str(adult)
#Visualize data
ggplot(adult,aes(age))+geom_histogram(bins=75,aes(fill=factor(income)))
ggplot(adult,aes(hr_per_week))+geom_histogram(bins=30)
ggplot(adult,aes(country))+geom_bar(aes(fill=factor(income)))

#split data into training and test set
set.seed(101)
split <- sample.split(adult$income,SplitRatio=0.7)
final.train <- subset(adult,split==TRUE)
final.test <- subset(adult,split==FALSE)

# logistic model of data
final.log.model <- glm(income ~ ., family=binomial(link='logit'),data=final.train)
summary(final.log.model)
new.model <- step(final.log.model) 
summary(new.model)

test.predict = predict(new.model, newdata=final.test, type="response")
table(final.test$income,test.predict>0.5)
