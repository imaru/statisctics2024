dat<-read.csv('data.csv')
d<-dat[,seq(2,4)]
source('anovakun_489.txt')
anovakun(d,'sA',3, peta='T')
d2<-data.frame(cbind(c(rep('a',16),rep('b',16),rep('c',16)),c(d[,1],d[,2],d[,3])))

anovakun(d2,'As',3,peta='T')

t.test(d$a1, d$a3, paired = 'T')
