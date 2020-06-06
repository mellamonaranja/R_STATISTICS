#Factor
x=c(1,2,3,4,5)
factor(x,levels = c(1,2,3,4))
factor(x,levels = c(1,2,3,4),ordered = T)

#Data Frame
name=c('a','b','c')
age=c(21,20,31)
gender=factor(c('M','F','F'))
character=data.frame(name,age,gender)
character$name
character[1,]

#Array
arr=array(1:3, c(2,4))
arr
arr[1,]
dimnamearr=list(c('1st','2nd'),c('1st','2nd','3rd','4th'))
arr2=array(1:3, c(2,4),dimnames = dimnamearr)
arr2
arr2['1st',]
arr2[,'1st']

#Matrix
tmp=1:12
matrix(tmp,nrow = 3)
matrix(tmp,nrow = 3,byrow = T)
v1=c(1,2,3,4)
v2=c(5,6,7,8)
v3=c(9,10,11,12)
cbind(v1,v2,v3)
rbind(v1,v2,v3)

#List
title='My list'
ages=c(31,41,21)
numbers=matrix(1:9, nrow = 3)
names=c('Baby','Gentle','None')
listEx=list(title,ages,numbers,names)
listEx
listEx[[1]]
listEx2=list(title=title, age=ages, number=numbers,name=names)
listEx2
listEx2[[1]]
listEx2$title
