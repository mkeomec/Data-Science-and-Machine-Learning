# this is a comment

TRUE
T
a <- T
'hello'
a <- 'hello'
b <- "hello"
class(a)
class(12)
class(32.2)
class(TRUE)
class(F)

#Vectors
nvec <- c(1,2,3,4,5)
class(nvec)
cvec <- c("u","s","a")
class(cvec)
lvec <- c(T,F)
lvec
class(lvec)

V <- c(TRUE,20,40)
V
class(V)
V <- c('USA',20,31)
class(V)

temps <- c(72,71,68,73,69,75,76)
names(temps) <- c('Mon','Tues','Wed','Thu','Fri','Sat','Sun')
days <-  c('Mon','Tues','Wed','Thu','Fri','Sat','Sun')
names(temps) <- days
temps

# Vector operations

v1 <- c(1,2,3)
v2 <- c(5,6,7)
v1+v2
v1-v2
v2-v1
v1*v2
v1/v2

sum(v1)
sum.of.vec <- sum(v1)
sum(v2)
mean(v1)
sd(v1)
max(v1)
min(v1)
prod(v1)
prod(v2)

#Vector indexing and slicing

v1 <- c(100,200,300)
v2 <- c('a','b','c')
v1[2]
v2[3]
v1[c(1,2)]
v2[c(1,3)]
v <- c(1,2,3,4,5,6,7,8,9,10)
v[2:4]
v[7:10]
v <- c(1,2,3,4)
names(v) <- c('a','b','c','d')
v['b']
v[c('c','d','a')]
v[v>2]
v>2
my.filter <- v>2
v[my.filter]

#Help
help('vector')
??vector
help.search('vector')

#comparison operators
5>6
5<6
5<=6
5>=5
2==3
2!=4
2==2
v <- 2
v< -1
my.var <- 2
my.var < -10
v <- c(1,2,3,4,5)
v <2
v==3
v2 <- c(10,20,30,40,50)
v<v2

#Training exercises
2^5
stock.prices <- c(23,27,23,21,34)
names(stock.prices) <- c('Mon','Tues','Wed','Thu','Fri')
mean(stock.prices)
over.23 <- stock.prices>23
stock.prices[over.23]
max(stock.prices)
    