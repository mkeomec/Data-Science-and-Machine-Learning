x <- 1
if(x==1){
    print("Hello")
}

x <- 30
if(x%%2==0){
    print('Even Number')
}else{
    print('Not Even')
}

x <- matrix()
if(is.matrix(x)==TRUE){
    print('Is a Matrix')
}else{print('Is not a Matrix')
}

x <- c(3,1,7)
if (x[2]>x[1]&x[1]>x[3]){
x=c(x[2],x[1],x[3])
}else if (x[2]>x[1]&x[3]>x[2]){
x=c(x[3],x[2],x[1])    
}else{
x=c(x[3],x[1],x[2])    
}

print(x)
sort(x,decreasing=TRUE)

x <- c(20,10,1)
max(x)
if (x[1]>=x[2]) {
    x[1]
}else if (x[2]>x[1]&x[2]>x[3]){
    print(x[2])
}else{
    print(x[3])
}



