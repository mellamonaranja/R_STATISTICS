#Hypothesis Test
qt(0.025,df=14)

1-pt(0.753,df=14)

alpha=631.5828
n=18
c.u=qt(1-alpha, df=n-1)
c.u

1-pt(2.333,df=n-1)

#Mean test from Simple Population
data=read.table("http://www.amstat.org/publications/jse/datasets/babyboom.dat.txt", header=F)
str(data)
View(data)
names(data)=c('times','gender','weight','minutes')
tmp=(subset(data,gender==1))
weight=tmp[[3]]
barx=mean(weight)
s=sd(weight)
n=length(weight)
h0=2800
t.t=(barx-h0)/(s/sqrt(n))
t.t
alpha=0.05 #Significance Level
c.u=qt(1-alpha, df=n-1) #Critical Value
c.u #Critical Value<Significance Level

p.value=1-pt(t.t,df=n-1) #Signigicance Probability
p.value #Signigicance Probability<Significance Level

t.test(weight,mu=2800, alternative = 'greater')

alpha=0.05
qnorm(1-alpha)

z=0.333
1-pnorm(z)

tmp=read.table('/Users/joohyunyoon/workspace/RSTATISTIC/sourceFROMBOOK/Chapter06/data/restitution.txt',
               header = T)
str(tmp)
rel=ifelse(tmp$rst<0.4134|tmp$rst>0.4374, 1, 0) #Inferior goods Interval
n=length(rel) #Sampling number
nos=sum(rel) #Inferior goods number
sp=nos/n #Inferior goods Ratio
hp=0.1 #Population Ratio
(sp-hp)/sqrt((hp*(1-hp))/n)

alpha=0.05 #significance Level
c.u=qnorm(1-alpha) #Critical Value
c.u

p.value=1-pnorm(z)
p.value

prop.test(nos, n, p=0.1, alternative = 'greater',correct = F)
