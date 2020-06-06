ranicafe=read.csv('/Users/joohyunyoon/workspace/RSTATISTIC/sourceFROMBOOK/Chapter02/data/cafedata.csv',
         header=T, na.strings = 'na', stringsAsFactors = F)
str(ranicafe)
ranicafe=na.omit(ranicafe)
str(ranicafe)

install.packages('ggplot2')
library(ggplot2)

ggplot(ranicafe, aes(Coffees))+
    geom_bar(fill='gray')+
    ggtitle('Rani cafe\'s sales volume')+
    theme(plot.title = element_text(size = 20, face = 'bold'))+
    xlim(0,50)+xlab('Sales volume')+
    ylab('Frequency')+scale_y_continuous(breaks=0:10)
    
#Minimum and Maximum
ranicafe$Coffees
sort(ranicafe$Coffees)
sort(ranicafe$Coffees)[1]
sort(ranicafe$Coffees, decreasing = T)
sort(ranicafe$Coffees, decreasing = T)[1]
min(ranicafe$Coffees)
max(ranicafe$Coffees)

#Mode
rc=ranicafe$Coffees
stem(rc)
max(table(rc))

#Mean
weight=(1/length(rc))
sum(rc*weight)
mean(rc)

rc=c(rc,NA)
tail(rc,n=5)
mean(rc)
mean(rc,na.rm = T)

which(rc==21|rc==22)

x=1:6
x%%2==0
which(x%%2==0)

rc=ranicafe$Coffees
rc[rc==max(rc)]=480
mean(rc)

#Median
(median.idx=(length(rc)+1)/2)
(rc.srt=sort(rc))
rc.srt[median.idx]
median(rc)

rc=ranicafe$Coffees
rc[rc==max(rc)]=480
median(rc)

#Deviation
height=c(164,166,168,170,172,174,176)
height.m=mean(height)
height.dev=(height-height.m)
sum(height.dev)

#Variance
height.dev2=(height.dev^2)
sum(height.dev2)
mean(height.dev2)

#Standard Deviation
sqrt(mean(height.dev2)) #mean+-deviation, 170+-4cm

#Variance
var(height)

#Standard Deviation
sd(height)

rc=ranicafe$Coffees
rc.m=mean(rc)
rc.sd=sd(rc)
cat('Coffee Sales Volume',round(rc.m,1),'±',round(rc.sd),2,'cups')

#Coefficient of variance
rj=ranicafe$Juices
rc.m=mean(rc)
rc.m
rc.sd=sd(rc)
rc.sd
rj.m=mean(rj)
rj.m
rj.sd=sd(rj)
rj.sd
rc.cv=round(rc.sd/rc.m,3)
rc.cv
rj.cv=round(rj.sd/rj.m,3)
rj.cv

#Quartile
quantile(rc)

#Boxplot, Inter quartile Rnage
qs=quantile(rc)
qs[4]-qs[2]

IQR(rc)
bp=boxplot(rc, main='Boxplot vy cafe sales volume')

#Outlier
Q=quantile(cars$dist)
Q
ll=Q[2]-1.5*IQR(cars$dist)
ll
ul=Q[4]+1.5*IQR(cars$dist)
ul
cars$dist[cars$dist<ll] #result numeric(0) meaning there is no outlier
cars$dist[cars$dist>ul] #there is outlier bigger than 75%, 101

boxplot(cars$dist,main='Boxplot of Distance',col='orange')

library('ggplot2',lib.loc='~R/')

install.packages('RColorBrewer',repos = 'https://cran.seoul.go.kr')
display.brewer.all()
library(RColorBrewer)
display.brewer.all()
detach('package:RColorBrewer',unload = T)
display.brewer.all()

install.packages('stringi')
install.packages(c('fAsianOptions','combinat'))
install.packages('/Users/joohyunyoon/workspace/RSTATISTIC/prob',repos = NULL, type='source')
library(prob)
tosscoin(1)







