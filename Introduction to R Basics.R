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
