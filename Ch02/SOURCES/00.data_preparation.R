data=read.csv("/Users/joohyunyoon/workspace/RSTATISTIC/Ch02/DATA/ch02.csv",header=F, na.strings = c('.'))
str(data)
data$V1=factor(data$V1, levels = c(1,2), labels=c('Male','Female'))
data$V3=factor(data$V3,levels = 1:15,
               labels=c('Householder','Spouse of householder','Children',
                                  'Spouse of children', 'Parents of householder',
                                  'Parents of Spouse', 'Grandchild of son, Spouse',
                                  'Grandchild of daughter, Spouse',
                                  'Great grandchild, Spouse','Grandparents',
                                  'Brothers and sisters, spouses',
                                  'Children of brothers and sisters, spouses',
                                  'Brothers and sisters of parents, spouses', 'Relatives',
                                  'Others'))
data$V4=factor(data$V4, levels =c(1:2), labels = c('Korea','Foreign'))
data$V5=factor(data$V5,levels = 1:8, 
               labels = c('Uneducated','Primaryschool','Middleschool',
                         'Highschool','Vocationalcollege','University',
                         'Master','Doctoral'))
str(data)
save.image('data.rda')
