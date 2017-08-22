hello_you <- function(name){
    print(paste("hello",name))
}
hello_you('sam')

hello_you2 <- function(name){
    return(paste('hello',name))
}

hello_you2('bah')

prod <- function(num1,num2){
    print(num1*num2)
}

prod(3,4)

num_check <- function(arg1,arg2){
    return(is.element(arg1,arg2))
    
}

num_check <- function(num,v){
    for(ele in v){
        if (ele==num){
            return(TRUE)
        }
    }
    print('test')
    return(FALSE)
   
}
num_check(2,c(1,2,3))
num_check(2,c(1,4,5))


num_count <- function(arg1,arg2){
    print(sum(arg1==arg2))
}

num_count(2,c(1,1,2,2,3,3))
num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3))

bar_count <- function(weight){
    fives <- floor(weight/5)
    ones <- weight%%5
    print(fives+ones)
}
    

bar_count(6)
bar_count(17)


summer <- function(arg1,arg2,arg3){
    vec <- vector()
    if (arg1%%3!=0){
    vec <- append(arg1,vec)
    } 
    if  (arg2%%3!=0){
        vec <- append(arg2,vec)
    }
    if  (arg3%%3!=0){
        vec <- append(vec,arg3)
    } 
    print(vec)
    print(sum(vec))
}

summer(7,2,3)
summer(3,6,9)
summer(9,11,12)

prime_check <- function(int){
    for (var in 2:ceiling(sqrt(int))){
        if (int%%var==0){
        ret <- 'FALSE'
        break
        }
    }
    if (ret!='FALSE' | int<3){
        ret <- 'TRUE'
    }
    
    print(ret)
}    
prime_check(12)
