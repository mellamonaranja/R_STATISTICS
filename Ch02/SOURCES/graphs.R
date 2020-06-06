#Plot

str(cars)
show(cars)
plot(cars$speed, cars$dist, main='Speed and Distance',xlab='Speed(mph)',
     ylab='Distance(ft)',pch=6,col='red')

#Conclusion : More rapid, longger distance

Nile
str(Nile)
plot(Nile, main='Nile flow rate by year',xlab='Year',ylab='Flow')
plot(Nile, type='o', main='Nile flow rate by year',xlab='Year',ylab='Flow')

#Barplot and Histogram

load('data.rda')
tableV4=table(data$V4)
tableV4
barplot(tableV4,main='The number by Nationality',
        xlab='Nationality',ylab = 'Number')
tableV1.V4=table(data$V1,data$V4)
tableV1.V4
barplot(tableV1.V4,legend.text = T, col = c('orange','green'),
        main = 'The number by gender',xlab = 'Gender',ylap='Number')
hist(data$V2, main = 'Distribution by age',xlab = 'Age',ylab = 'Number')

hist(data$V2,breaks = c(seq(0,90,10)),right = F,main='Distribution by age',
     xlab = 'Age',ylab = 'Number')

tableV1.V5=table(data$V1,data$V5)
tableV1.V5
barplot(tableV1.V5,legend.text = T, col = c('orange','green'),
        main = 'The number by academic background',
        xlab = 'Academic background',ylap='Number',beside = T) #If beside is F, the columns of height are portrayed as stacked bars, and if T, the columns are portrayed as juxtraposed bars.

#Pie-chart
table.V5=table(data$V5)
table.V5
pie(table.V5,main = 'Portion by academic background')
