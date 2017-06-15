state.x77
USPersonalExpenditure
women
data()
DNase
head(state.x77)
str(state.x77)
summary(state.x77)
days <- c('Mon','Tues','Wed','Thur','Fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(T,T,F,F,T)
df <- data.frame(days,temp,rain)
str(df)
summary(df)
df[1,]
df[,1]
df[1:5,c('days','temp')]
df$days
df$temp
df['days']
subset(df,subset=rain==TRUE)
subset(df,subset=temp>23)
sorted.temp <- order(df['temp'])
df[sorted.temp,]
desc.temp <- order(-df['temp'])
df[desc.temp,]
desc.temp <- order(-df$temp)

met <- read.csv(file.choose(), header=TRUE)

# Data frame operations
empty <- data.frame()
c1 <- 1:10
letters
c2 <- letters[1:10]
df <- data.frame(col.name.1=c1,col.name.2=c2)
df <- data.frame(c1,c2)
d2 <- read.csv('some_file.csv')
write.csv(df,file='saved_df.csv')
df2 <- read.csv('saved_df.csv')
nrow(df)
ncol(df)
colnames(df)
str(df)
summary(df)

df[5,2]
df[[5,2]]
df[5,'c2']
df[[2,'c1']] <- 9999
df
df[1,]
df[,1]
mtcars
head(mtcars)
mtcars$mpg
mtcars[,'mpg']
vec <-mtcars[1]
mtcars[['mpg']]
mtcars['mpg']
head(mtcars[c('mpg','cyl')])
df2 <- data.frame(col.name.1=2000,col.name.2='new')            
rbind(df,df2)
df$newcol <- 2*df$col.name.1
df$newcol.copy <- df$newcol
df[,'newcol.copy2'] <- df$newcol
colnames(df)
colnames(df) <- c('1','2','3','4','5')
colnames(df)[1] <- 'NEW COL NAME'
df[1:10,]
df[1:3,]
head(df)
head(df,7)
df[-2,]
head(df)
head(mtcars)
mtcars[mtcars$mpg>20,]
mtcars[mtcars$mpg>20&mtcars$cyl==6,]
mtcars[mtcars$mpg>20&mtcars$cyl==6,c('mpg','cyl','hp')]
subset(mtcars, mpg>20&cyl==6)
head(mtcars)
mtcars[,c(1,2,3)]
mtcars[,c('mpg','cyl')]
is.na(mtcars)
any(is.na(df))
any(mtcars$mpg<15)
df[is.na(df)] <- 0
mtcars$mpg[is.na(mtcars$mpg)] <- mean(mtcars$mpg)

# R data frame exercises
df <- data.frame('Age'=c(22,25,27),'Weight'=c(150,165,120),'Sex'=c('M','M','F'))
rownames(df) <- c('Sam','Frank','Amy')
is.data.frame(mtcars)
mat <- matrix(1:25, nrow=5)
data.frame(mat)
df <- mtcars
head(df,6)
df[1:6,]
mean(df$mpg)
df[df$cyl==6,]
df[,c('am','gear','carb')]
df$performance <- round(df$hp/df$wt,digits=2)
mean(df$mpg[df$hp>100&df$wt>2.5])
mean(subset(df,hp>100 & wt>2.5)$mpg)

df['Hornet Sportabout','mpg']

Name <- c('Sam','Frank','Amy')
Age <- c(22,25,26)
Weight <- c(150,165,120)
Sex <- c('M','M','F')
df <- data.frame(row.names=Name,Age,Weight,Sex)
df
