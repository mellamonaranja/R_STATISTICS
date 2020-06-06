#Regression Analysis
mean.x=mean(hf.son$Father)
mean.y=mean(hf.son$Height)
sxy=sum((hf.son$Father-mean.x)*(hf.son$Height-mean.y))
sxx=sum((hf.son$Father-mean.x)^2)
b1=sxy/sxx
b1
b0=mean.y-(b1*mean.x)
b0

lm(Height~Father, data=hf.son) #Intercept is same as b0, Father is same as b1

plot(Height~Father, pch=21, data=hf.son, 
     xlab='Father\'s height',ylab = 'Son\'s height',)

out=lm(Height~Father, data=hf.son)
anova(out)
summary(out)

out2=lm(dist~speed, data=cars)
shapiro.test(residuals(out2))








