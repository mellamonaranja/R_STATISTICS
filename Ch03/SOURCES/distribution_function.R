#Binomial Distribution
n=6
p=1/3
x=0:n
dbinom(2,size = n, prob=p)
dbinom(4,size = n, prob=p)
px=dbinom(x,size = n,prob = p)
px
plot(x,px,type='s',xlab='Numver of successes(x)',
     ylab='Probability(P[X=x])',main='B(6, 1/3)')

#Probability Binomial Distribution
pbinom(2, size = 6, prob = p)
pbinom(4, size = 6, prob = p)
pbinom(4, size = 6, prob = p)-pbinom(2, size = 6, prob = p)

#Quantile Binomial Distribution
qbinom(0.1,size = n,prob = p)
qbinom(0.5,size = n,prob = p)

#Random Binomial Distribution
rbinom(10,size = n,prob = p)

#Binomial Distribution Expected Value
ex=sum(x*px)
ex2=sum(x^2*px)
varx=ex2-ex^2
varx

#Normal Distribution
options(digits = 3)
mu=170
sigma=6
ll=mu-(3*sigma)
ul=mu+(3*sigma)
x=seq(ll,ul,by=0.02)
nd=dnorm(x,mean = mu,sd=sigma)
plot(x,nd,type='o',xlab='x',ylab='P(X=x)',lwd=2, col='orange')

#Probability Distribution
pnorm(mu,mean=mu,sd=sigma) #Probability valiable X=N(170,6^)
pnorm(158,mean = mu,sd=sigma)
pnorm(180,mean = mu,sd=sigma)-pnorm(160,mean = mu,sd=sigma)

#Quantile Distribution
qnorm(0.25,mean = mu,sd=sigma)
qnorm(0.5,mean = mu,sd=sigma)
qnorm(0.75,mean = mu,sd=sigma)

#Pseudo Random Number Distribution
options(digits = 5)
set.seed(5)
smp=rnorm(400, mean=mu,sd=sigma)
c(mean(smp),sd(smp))
hist(smp, probability = T, main='Distribution sampling from N(170,6^',
     lty=2, xlab = '',ylab = '',col = 'orange')

#Normal Distribution
options(digits = 4)
mu=0
sigma=1
p0.05=qnorm(0.05,mean = mu,sd=sigma)
p0.05
p0.025=qnorm(0.025,mean = mu,sd=sigma)
p0.025
pnorm(1.645)-pnorm(-1.645)
pnorm(1.96)-pnorm(-1.96)



