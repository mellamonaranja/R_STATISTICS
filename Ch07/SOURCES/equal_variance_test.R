#Equal Variance Test
data=read.table('/Users/joohyunyoon/workspace/RSTATISTIC/sourceFROMBOOK/Chapter07/data/chapter7.txt',header = T)
var.test(data$weight~data$gender) #Significance probability is 0.07526, therefore two group's variance is equal

#Two Independent Group's mean Test
t.test(data$weight~data$gender, mu=0, alternative='less',
       var.equal=T) #mu=two group's mean differency, two groups variance is same(var.equal=T)

t.test(data$weight~data$gender, mu=0, alternative='less',
       var.equal=F)
qt(0.05,df=42) #Critical Value, less than T

#Mean Difference Test
data=read.csv('/Users/joohyunyoon/workspace/RSTATISTIC/sourceFROMBOOK/Chapter07/data/01.anorexia.csv',header = T)
str(data)
n=length(data$Prior-data$Post)
m=mean(data$Prior-data$Post)
s=sd(data$Prior-data$Post)
s
t.t=m/(s/sqrt(n))
t.t #Test Statistic

t.test(data$Prior, data$Post, paired = T, alternative = 'less') #paired = T means get mean difference between two groups
qt(0.05,df=16) #Critical Value

#One-was ANOVA(Analysis of Variance)
str(iris)
m=lm(Sepal.Length~Species, data=iris)
anova(m) #There are difference length by species

out=aov(m)
summary(out)

#Post hoc Test
ph=TukeyHSD(out)
ph #p adj means signaficance probability, 0<0.05 therefore there are difference
par(mar=c(4,4,4,4))
plot(ph)

#SSE(Error Sum of squares)
ad= read.csv("/Users/joohyunyoon/workspace/RSTATISTIC/sourceFROMBOOK/Chapter06/data/age.data.csv", header=T)
View(ad)
y1=ad$age[ad$scale=='1']
y2=ad$age[ad$scale=='2']
y3=ad$age[ad$scale=='3']

y1.mean=mean(y1)
y1.mean
y2.mean=mean(y2)
y2.mean
y3.mean=mean(y3)
y3.mean

sse1=sum((y1-y1.mean)^2)
sse1
sse2=sum((y2-y2.mean)^2)
sse2
sse3=sum((y3-y3.mean)^2)
sse3

sse=sse1+sse2+sse3
sse
dfe=(length(y1)-1)+(length(y2)-1)+(length(y3)-1)

#SSt(Treatment Sums of Squares)
y=mean(ad$age)
sst1=length(y1)*sum((y1.mean-y)^2)
sst1
sst2=length(y2)*sum((y2.mean-y)^2)
sst2
sst3=length(y3)*sum((y3.mean-y)^2)
sst3

sst=sum(sst1+sst2+sst3)
sst
(dft=length(levels(ad$scale))-1)

tsq=sum((ad$age-y)^2)
ss=sst+sse 
ss 

mst=sst/dft
mst
mse=sse/dfe
mse
f.t=mst/mse
f.t
alpha=0.05
tol=qf(1-alpha, 2, 147)
tol
p.value=1-pf(f.t,2, 147)
p.value

ow=lm(age~scale, data=ad)
ow
anova(ow)










