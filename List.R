v <- c(1,2,3)
m <- matrix(1:10,nrow=2)
df <- mtcars
my.list <- list(v,m,df)
my.list
my.name.list <- list(sample_vec=v,my.matrix=m,sample.df=df)
my.list[1]
my.name.list[1]
my.name.list['sample_vec']
my.name.list$sample_vec
double.list <- c(my.name.list,my.name.list)
str(my.name.list)