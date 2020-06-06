#Point Estimation-Efficiency
x=seq(-3,3,0.01)
y=dnorm(x)
y.1=dnorm(x, sd=sqrt(1/3)) #mean has 0 as dafault mean value, therefore it can be omitted if mean is 0
y.2=dnorm(x, sd=sqrt(7/18))
pnorm(0.1, sd=sqrt(1/3))-pnorm(-0.1, sd=sqrt(1/3))
pnorm(0.1, sd=sqrt(7/18))-pnorm(-0.1, sd=sqrt(7/18))
plot(x,y,type = 'o',axes = F, lwd=3, col='orange',ylim = c(0,1))
lines(x,y.1, col='blue', lwd=3, lty=4)
lines(x,y.2,col='red',lwd=3, lty=3) #Dispersion of y.1 is less rather than y.2

options(digits = 3)
set.seed(1) #It can creates same pseudo random
mean.seq=function(x){
    n=length(x)
    sum=0
    n2=0
    for (i in 1:n) {
        newx=x[i]*i
        sum=newx+sum
        n2=i+n2
        return(sum/n2)
    }
}

y1=rep(NA,1000)
y2=rep(NA,1000)
for (i in 1:1000) {
    smp=rnorm(3)
    y1[i]=mean(smp)
    y2[i]=mean.seq(smp)
}

n1=length(y1[(y1>-0.1)&(y1<0.1)])
n2=length(y2[(y2>-0.1)&(y2<0.1)])

c(mean=mean(y1),var=var(y1), n=n1)
c(mean=mean(y2),var=var(y2), n=n2)

par(mfrow=c(1,2))
hist(y1, xlim = c(-2,2),ylim = c(0,1),col = 'orange',probability = T,
     border = 'purple')
hist(y2, xlim = c(-2,2),ylim = c(0,1),col = 'orange',probability = T,
     border = 'purple')

1-(pnorm(2)-pnorm(-2))

library(prob)
n=3
smps.all=rolldie(n)
str(smps.all)
head(smps.all,n=3)

is.even=function(x) return(!x%%2)
var.p=function(x){
    return( sum((x-mean(x))^2 / length(x)))
}
p.even=function(x, s.size=3){
    return(is.even(x)/s.size)
}

phat=apply(smps.all, 1, p.even)
mean(phat)
p.p=0.5
mean(p.p)
var.p(phat)
p.p*((1-p.p)/3)
sqrt(var.p(phat)) #Standard Error
