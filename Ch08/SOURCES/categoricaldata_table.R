#Categorical Data
names=c('a','b','c')
gender=c('2','1','1')
names=c(names,'d')
names
gender=c(gender,'male')
gender
str(gender)
gender[5]='female'
gender
f.gender=factor(gender)
f.gender
str(f.gender)
levels(f.gender)
f.gender[6]='female'
f.gender

answer=c(2,2,3,2,3,4,4,4,3,4)
f.answer=factor(answer)
str(f.answer)
f.answer=factor(answer, levels = c(1,2,3,4,5))
str(f.answer)

o.f.answer=factor(answer, levels = c(1,2,3,4,5), ordered = T)
str(o.f.answer)
o.f.answer
o.f.answer=factor(answer, levels = c(1,2,3,4,5), ordered = T, 
                  labels = c('very unsatisfied','unsatisfied','normal',
                             'satisfied','very satisfied'))
str(o.f.answer)
o.f.answer

#DataFrame, Facor
names=c('a','b','c')
gender=c('2','1','1')
characters=data.frame(name=names,gender=gender)
str(characters)

characters=data.frame(name=names,gender=gender,
                      stringsAsFactors = F)
str(characters)
characters=transform(characters,
                     f.gender=factor(gender,
                                     levels = c('1','2'),
                                     labels = c('male','female')))
str(characters)
characters

sns=read.csv('/Users/joohyunyoon/workspace/RSTATISTIC/sourceFROMBOOK/Chapter07/data/snsbyage.csv',
             header = T)
str(sns)

sns.c=read.csv('/Users/joohyunyoon/workspace/RSTATISTIC/sourceFROMBOOK/Chapter07/data/snsbyage.csv',
               header = T,stringsAsFactors = F)
str(sns.c)

sns.c=transform(sns.c,age.c=factor(age, levels = c(1,2,3),
                                   labels = c('twenty','thirty','fourty'))) 
sns.c=transform(sns.c, service.c=factor(service, 
                                        levels = c('F','T','K','C','E'),
                                        ordered = T))
str(sns.c)

#Table
age.c.tab=table(sns.c$age.c)
str(age.c.tab)
age.c.tab
margin.table(age.c.tab)
addmargins(age.c.tab)
prop.table(age.c.tab)

c.tab=table(sns.c$age.c, sns.c$service.c) #row, column
str(c.tab)
c.tab

margin.table(c.tab)
margin.table(c.tab,margin = 1)
margin.table(c.tab,margin = 2)
addmargins(age.c.tab,margin = 1)
addmargins(age.c.tab,margin = 2)
prop.table(age.c.tab,margin = 1)
prop.table(age.c.tab,margin = 2)

#xtabs()
xt.age=xtabs(~age.c, data = sns.c)
str(xt.age)
xt.age
xt.sns=xtabs(~age.c+service.c, data=sns.c)
str(xt.sns)
xt.sns

s.data=read.csv('/Users/joohyunyoon/workspace/RSTATISTIC/sourceFROMBOOK/Chapter07/data/xtab.count.csv',
                header = T)
s.data
xtabs(count~group+result,data = s.data)

sns=matrix(c(38.9,22,20.8,15.2,3.1,
             18.8,18.2,41.4,19.1,2.6,
             23.2,22.7,39.6,9.4,5.1),ncol = 5,byrow = T)
smps=c(532,571,337)
snsbyage=round(smps*(sns/100))
colnames(snsbyage)=c('F','T','K','C','E')
rownames(snsbyage)=c('twenty','thirty','fourty')
snsbyage
write.csv(snsbyage,file = '/Users/joohyunyoon/workspace/RSTATISTIC/Ch08/DATA/snsbyage.csv',
          )

