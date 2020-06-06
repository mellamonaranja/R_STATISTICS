#Population Variance
options(digits = 5)
cor=c(0.4196, 0.4172, 0.4237, 0.4182, 0.4324,
      0.4365, 0.4354, 0.4156, 0.4172, 0.4414)
m=mean(cor)
m
dev=cor-m
dev
num=sum(dev^2)
num
denom=length(cor)
denom
denom2=length(cor)-1
denom2
var.p=(num/denom)
var.p
var.s=(num/denom2)
var.s
var(cor) #The result is same, meaning R provides sampling variance, not population variance

#User Defined Function 1.
options(digits = 4)
var.p=function(x){
    n=length(x)
    m=mean(x)
    num=sum((x-m)^2)
    denom=n
    var=num/denom
    return(var)
}
radius <- c(234, 234, 234, 233, 233, 
            233, 233, 231, 232, 231)
weight <- c(146.3, 146.4, 144.1, 146.7, 145.2, 
            144.1, 143.3, 147.3, 146.7, 147.3)

var.p(radius) #Population Variance
var(radius) #Sampling Variance

var.p(weight) #Population Variance
var(weight) #Sampling Variance

#User Defined Function 2.
options(digits = 4)
var.p2=function(x,na.rm=FALSE){
    if(na.rm == TRUE){
        x=x[!is.na(x)]
    }
    n=length(x)
    m=mean(x, na.rm=na.rm)
    num=sum((x-m)^2, na.rm=na.rm)
    denom=n
    var=num/denom
    return(var)
}

radius <- c(234, 234, 234, 233, 233, 
            233, NA, 231, 232, 231)
var.p2(radius)
var.p2(radius,na.rm = T)

















