#Laptop dir
library(dplyr)
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

#Combine Never worked and Without-pay into Unemployed group

for(i in 1:nrow(adult)){
    if (adult$type_employer[i]=='Never-worked'|adult$type_employer[i]=='Without-pay'){
        print(i)
        adult$type_employer[i] <- 'unemployed'   
    }
    
}
table(adult$type_employer)

