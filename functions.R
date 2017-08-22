#functions
name_of_func <- function(input1,input2,input3=45){
    #Code execute
    result <- input1+input2
    return(result)
}

hello <- function(name='Frank'){
    print(paste("hello",name))
}

hello('sammy')
hello()

add_num <- function(num1,num2){
    my.sum <- num1+num2
    return(my.sum)
}

result <- add_num(5,5)

times5 <- function(num){
    my.result <- num*5
    return(my.result)
}

my.output <- times5(100)
print(my.output)

v <- "I'm a global variable"
stuff <- "I'm global stuff"

fun <-  function(stuff){
    print(v)
    stuff <- "Reassign stuff inside of this function fun"
    print(stuff)
}

fun(stuff)
print(stuff)