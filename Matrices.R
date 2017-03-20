# R Matrices

1:10
v <- 1:10
matrix(v)
matrix(v,nrow = 2)
matrix(1:12,byrow = FALSE,nrow=4)
matrix(1:12,byrow = TRUE,nrow=4)
goog <- c(450,451,452,445,468)
msft <- c(230,231,232,233,220)

stocks <- c(goog,msft)
stock.matrix <- matrix(stocks,byrow=T,nrow=2)
days <- c('Mon','Tue','wed','thu','fri')
st.names <- c('Goog','MSFT')
colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names
print(stock.matrix)

mat <- matrix(1:25,byrow=T,nrow=5)
mat*2
mat/2
1/mat
mat>15
mat[mat>15]
mat+mat
mat%*%mat


# Matrix operations
colSums(stock.matrix)
rowSums(stock.matrix)
rowMeans(stock.matrix)
colMeans(stock.matrix)
FB <- c(111,112,113,120,145)
tech.stocks <- rbind(stock.matrix,FB)
print(tech.stocks)
avg <- rowMeans(tech.stocks)
tech.stocks <- cbind(tech.stocks,avg)
print(tech.stocks)

# Matrix indexing
v <- c(1,2,3,4,5)
v[2]
mat <- matrix(1:50,byrow=TRUE,nrow=5)
mat[1,]
mat[,1]
mat[1:3,]
mat[c(1,3),]
mat[1:2,1:3]
mat[2:3,5:6]

# Factor and categorical matrices
animal <- c('d','c','d','c','c')
id <- c(1,2,3,4,5)
factor(animal)
fact.ani <- factor(animal)

#Nominal - no order
#Ordinal - order

ord.cat <- c('cold','med','hot')
temps <- c('cold','med','hot','hot','hot','cold','med')
fact.temp <- factor(temps,ordered = TRUE,levels=c('cold','med','hot'))
fact.temp
summary(fact.temp)
summary(temps)

#R Matrix Exercises

A <- c(1,2,3)
B <- c(4,5,6)
rbind(A,B)
mat <- matrix(1:9,nrow=3)
is.matrix(mat)
mat2 <- matrix(1:25,byrow=TRUE,nrow=5)
mat2
mat2[2:3,2:3]
mat2[4:5,4:5]
matrix(runif(20,min=1,max=100),nrow=4)
