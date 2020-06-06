install.packages('stringi')
install.packages(c('fAsianOptions','combinat'))
install.packages('/Users/joohyunyoon/workspace/RSTATISTIC/prob',repos = NULL, type='source')
library(prob)
tosscoin(1)
rolldie(1)
urnsamples(1:3, size = 2)
urnsamples(1:3, size = 2, replace = T)
urnsamples(c(rep('R',3),rep('B',2)),size = 2)
tosscoin(2,makespace = T)

x=c(0,1,2)
px=c(1/4,2/4,1/4)
EX=sum(x*px)
EX
x*2
x*(1:6)
x*(1:4)
VX=sum(x^2*px)-EX^2
VX
