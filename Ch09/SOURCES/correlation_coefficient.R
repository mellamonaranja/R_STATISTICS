#Covariance and Correlation Coefficient
hf=read.table("http://www.randomservices.org/random/data/Galton.txt", 
              header=TRUE, stringsAsFactors=FALSE, sep="")
hf$Gender=factor(hf$Gender,levels = c('M','F'))
hf.son=subset(hf, hf$Gender=='M')
hf.son=hf.son[c('Father','Height')]

#Covariance
f.mean=mean(hf.son$Father)
s.mean=mean(hf.son$Height)
cov.num=sum((hf.son$Father-f.mean)*(hf.son$Height-s.mean))
cov.xy=cov.num/(nrow(hf.son)-1)
cov.xy

cov(hf.son$Father,hf.son$Height) #Same as cov.xy

#Sampling Correlation Codrricient
r.xy=cov.xy/(sd(hf.son$Father)*sd(hf.son$Height))
r.xy

cor(hf.son$Father, hf.son$Height) #Same as r.xy, lean(y/x), intercept(x coordinate, y coordinate)
##If Sampling Correlation Codrricient is closer to +-1, the relationship is closer to linear, closer to 0, the relationship is far disperse from linear

plot(Height~Father, data=hf.son, pch=16,col='3')
abline(lm(Height~Father,data=hf.son),col=2,lwd=2)

