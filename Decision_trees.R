install.packages('rpart')
install.packages('rpart.plot')
install.packages('randomForest')
library(rpart.plot)
library(rpart)
library(randomForest)
str(kyphosis)
head(kyphosis)

#Create decision tree model
tree <- rpart(Kyphosis~.,method='class',data=kyphosis)
tree

#visualize decision tree model
printcp(tree)
plot(tree,uniform=T,main='Kyphosis Tree')
text(tree,use.n=T,all=T)

prp(tree)

rf.model <- randomForest(Kyphosis~.,data=kyphosis)
rf.model

rf.model$predicted
rf.model$ntree
