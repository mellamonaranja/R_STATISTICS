#Height of Father and his son
hf=read.table("http://www.randomservices.org/random/data/Galton.txt", 
              header=TRUE, stringsAsFactors=FALSE, sep="")
str(hf)
View(hf)
str(hf$Gender)

#Processing as Factor
hf$Gender=factor(hf$Gender,levels = c('M','F'))
str(hf$Gender)
View(hf)
str(hf)

#Processing as DataFrame
hf.son=subset(hf, hf$Gender=='M')
str(hf.son)
hf.son=hf.son[c('Father','Height')]
str(hf.son)

#Create Plot
par(mar=c(4,4,1,1))
plot(hf.son$Father, hf.son$Height,
     xlab='Father\'s height', ylab='Son\'s height', 
     col=heat.colors(10))
abline(v=mean(hf.son$Father),lty=3, col=2,lwd=1)
abline(h=mean(hf.son$Height),lty=2, col=2,lwd=1)









