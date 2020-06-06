#DataFrame, Refine the Data
data=read.table("http://www.amstat.org/publications/jse/datasets/babyboom.dat.txt", header=F)

nrow(data)
ncol(data)

str(data)

head(data)
tail(data)
head(data,n=2)
names(data)
names(data)[1]='time.24Hrs'
names(data)
View(data)

row.names(data)

data$gender
data[,2]
data['gender']
data[['gender']]

str(data[, c(2,4)])
str(data[c('gender','minutes')])

data[data$gender==2,]
subset(data,gender==2)

male.m=mean(data$weight)
data[data$gender==2 & data$weight>male.m,]
subset(data,gender==2 & weight>male.m)

str(data[data$gender==2 & data$weight>male.m, c(2,4)])
str(subset(data, (gender==2) & (weight>male.m), select=c(2,4)))

ch7=data[,c(2,3)]
write.table(ch7,'/Users/joohyunyoon/workspace/RSTATISTIC/Ch07/DATA/ch7.txt',row.names = F)

ad= read.csv("/Users/joohyunyoon/workspace/RSTATISTIC/sourceFROMBOOK/Chapter06/data/age.data.csv", header=T)
str(ad)
summary(ad) #99 is normally used as outlier
ad$score=ifelse(ad$score==99,NA, ad$score)
summary(ad)

a=c(2,3,6,7,8)
ifelse(a%%2==0,1,0)

ad2=ad= read.csv("/Users/joohyunyoon/workspace/RSTATISTIC/sourceFROMBOOK/Chapter06/data/age.data.csv", 
                 header=T,na.strings = c('99'))
summary(ad2)

mean(ad$score)
mean(ad$score,na.rm=T)

is.na(c(1,NA,3,NA,5))
nonna.sum=sum(ad$score[!is.na(ad$score)])
nonna.sum
nonna.length=length(ad$score[!is.na(ad$score)])
nonna.length
nonna.sum/nonna.length

str(ad)
ad$scale=factor(ad$scale)
ad$sex=factor(ad$sex)
str(ad)
summary(ad)

length(ad$age[ad$scale=='1'])
mean(ad$age[ad$scale=='1'])
sd(ad$age[ad$scale=='1'])

install.packages('doBy')
library(doBy)
summaryBy(age~scale, data=ad, FUN=length) #age by scale or age accordiing to scale

summaryBy(age~scale, data=ad, FUN=c(mean, sd), na.rm=T)









