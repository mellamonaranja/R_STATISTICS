#CLT, Central Limit Theorem
set.seed(9)
n=1000
r.1.mean=rep(NA,n)
r.2.mean=rep(NA,n)
for (i in 1:n) {
    r.1.mean[i]=mean(rnorm(4,mean = 3,sd=1))
    r.2.mean[i]=mean(rnorm(4,mean = 170,sd=6))
}
options(digits = 4)
c(mean(r.1.mean),sd(r.1.mean))
c(mean(r.2.mean),sd(r.2.mean))

hist(r.1.mean,probability = T, xlab = 'Sampling Mean',
     ylab = 'Density',col = 'orange',border = 'red')
x1=seq(min(r.1.mean),max(r.1.mean),length=n)
y1=dnorm(x=x1,mean = 3,sd=(1/sqrt(4)))
lines(x1,y1,lty=3, lwd=3, col='purple')

hist(r.2.mean,probability = T, xlab = 'Sampling Mean',
     ylab = 'Density',col = 'orange',border = 'red')
x2=seq(min(r.2.mean),max(r.2.mean),length=n)
y2=dnorm(x=x2,mean = 170,sd=(6/sqrt(4)))
lines(x2,y2,lty=3, lwd=3, col='purple')

set.seed(9)
t=10
p=0.1
x=0:10
n=1000
b.2.mean=rep(NA,n)
b.4.mean=rep(NA,n)
b.32.mean=rep(NA,n)
for (i in 1:n) {
    b.2.mean[i]=mean(rbinom(2, size = t,prob = p))
    b.4.mean[i]=mean(rbinom(4, size = t,prob = p))
    b.32.mean[i]=mean(rbinom(32, size = t,prob = p))
}

options(digits = 4)
c(mean(b.2.mean),sd(b.2.mean))
c(mean(b.4.mean),sd(b.4.mean))
c(mean(b.32.mean),sd(b.32.mean))

hist(b.2.mean,probability = T, xlab = '',ylab = '', col = 'orange',
     border = 'red',main = 'Sampling Size : 2')
x1=seq(min(b.2.mean),max(b.2.mean),length=n)
y1=dnorm(x=x1, mean = 1, sd=sqrt(0.9)/sqrt(2))
lines(x1,y1,lty=3, lwd=3, col='purple')

hist(b.4.mean,probability = T, xlab = '',ylab = '', col = 'orange',
     border = 'red',main = 'Sampling Size : 4')
x2=seq(min(b.4.mean),max(b.4.mean),length=n)
y2=dnorm(x=x2, mean = 1, sd=sqrt(0.9)/sqrt(4))
lines(x2,y2,lty=3, lwd=3, col='purple')

hist(b.32.mean,probability = T, xlab = '',ylab = '', col = 'orange',
     border = 'red',main = 'Sampling Size : 32')
x3=seq(min(b.32.mean),max(b.32.mean),length=n)
y3=dnorm(x=x3, mean = 1, sd=sqrt(0.9)/sqrt(32))
lines(x3,y3,lty=3, lwd=3, col='purple')
