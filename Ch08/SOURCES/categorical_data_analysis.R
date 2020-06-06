#Goodness of Fit Test
1-qchisq(0.470024, df=3)
x=c(315,101,108,32)
chisq.test(x,p=c(9,3,3,1)/16)

sns.c=read.csv('/Users/joohyunyoon/workspace/RSTATISTIC/sourceFROMBOOK/Chapter07/data/snsbyage.csv',
               header = T,stringsAsFactors = F)
str(sns.c)
sns.c=transform(sns.c,age.c=factor(age, levels = c(1,2,3),
                                   labels = c('twenty','thirty','fourty'))) 
sns.c=transform(sns.c, service.c=factor(service, 
                                        levels = c('F','T','K','C','E'),
                                        ordered = T))
#Expected Frequency(Ei)
c.tab=table(sns.c$age.c, sns.c$service.c)
c.tab
a.n=margin.table(c.tab,margin = 1)
a.n
s.n=margin.table(c.tab,margin=2)
s.n
s.p=s.n/margin.table(c.tab)
s.p
expected=round(a.n%*%t(s.p),2)

o.e=c.tab-expected
t.t=sum((o.e)^2/expected)
t.t #Test Statistic
qchisq(0.95, df=8) #Degree of Freedom is (3-1)*(5-2) : row-1*col-1
1-pchisq(t.t, df=8)

chisq.test(c.tab)

#Test of Independence
data(UCBAdmissions)
UCBAdmissions
ucba.tab=apply(UCBAdmissions, c(1,2),sum)
round(prop.table(ucba.tab,margin = 2)*100,1)
a.n=margin.table(ucba.tab,margin = 1)
a.n
g.n=margin.table(ucba.tab,margin = 2)
g.n
a.p=a.n/margin.table(ucba.tab)
a.p
g.p=g.n/margin.table(ucba.tab)
g.p
expected=margin.table(ucba.tab)*(a.p%*%t(g.p))
expected

qchisq(0.95,df=1) #Critical Value
1-pchisq(92.21,df=1)
chisq.test(ucba.tab)

o.e2=((ucba.tab-expected)-0.5)^2/expected
o.e2
sum(o.e2)


