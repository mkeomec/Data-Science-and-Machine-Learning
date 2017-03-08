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
