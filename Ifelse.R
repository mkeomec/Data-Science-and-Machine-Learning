#If, else, and else if statements
x <- 13
if (x==10){
    #Code
    print('x is equal to 10!')
}   else if (x==12){
    print('x is equal to 12')
}else{
    print('x was not eqaul to 10 or 12')
}

hot <- FALSE
temp <- 100
if(temp>80){
    hot <- TRUE
}
print(hot)



temp <- 30
if(temp>80){
    print('Hot Outside')
} else{
    print('Temp is not greater than 80')
    }
temp <- 75
if(temp>80){
    print('Hot Outside')
} else if(temp<=80&temp>=50){
    print('Nice outside')
} else{
    print("It's less than 50 degrees outside")
}

ham <- 10
cheese <- 10
report <- 'blank'

if (ham>=10&cheese>=10){
    report <- "Strong sales of both ham and cheese"
}else if (ham==0 & cheese ==0){
    report <- "No sales today!"
}else{
    report <- "we sold something today"
}
print(report)
