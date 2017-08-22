#apply

print(sample(x=2:12,11))

v <- c(1:5)

addrand <- function(x){
    ran <- sample(1:100,1)
    return(x+ran)
}

result <- lapply(v,addrand)
result <- sapply(v,addrand)
print(result)


v <- 1:5
times2 <- function(num){
    return(num*2)
}

result <- sapply(v,times2)
print(result)

#anonymous functions

addrand <- function(){
    #code
}

v <- 1:5
sapply(v,function(num){num*2})


add_choice <- function(num,choice){
    return(num+choice)
}    
print(add_choice(2,10))

sapply(v,add_choice,choice=100)
    