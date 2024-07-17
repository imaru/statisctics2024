library(tidyverse)
library(ggplot2)
q2<-read.csv('Q2data.csv')

q2l<-pivot_longer(q2,cols=c('a1.b1','a1.b2','a2.b1','a2.b2'),names_sep='\\.',names_to = c('A','B'))

g<-ggplot(data=q2l,aes(x=A,y=value,fill=B))+geom_boxplot()
plot(g)


d1<-rnorm(20, mean=50, sd=5)
d2<-rnorm(18, mean=55, sd=8)

q3<-rbind(pivot_longer(data.frame(d1), cols='d1'),pivot_longer(data.frame(d2), cols='d2'))

q3<-read.csv('Q3data.csv')

t.test(q3$value~q3$name)

#write.csv(q3, 'Q3data.csv', row.names = F)

source('anovakun_489.txt')

# Q2

id<-seq(1,30)
a1.b1<-rnorm(30, mean=60, sd=5)
a1.b2<-rnorm(30, mean=40, sd=5)
a2.b1<-rnorm(30, mean=40, sd=5)
a2.b2<-rnorm(30, mean=60, sd=5)
dA<-data.frame(t(rbind(id,a1.b1,a1.b2,a2.b1,a2.b2)))
dA<-pivot_longer(dA, cols=c('a1.b1','a1.b2', 'a2.b1', 'a2.b2'), names_sep = '\\.', names_to=c('A','B'))
anovakun(dA, 'ABs', long=T)
gA<-ggplot(data=dA, aes(x=A, y=value, fill=B))+geom_boxplot()
plot(gA)

id<-seq(1,30)
a1.b1<-rnorm(30, mean=70, sd=5)
a1.b2<-rnorm(30, mean=30, sd=5)
a2.b1<-rnorm(30, mean=60, sd=5)
a2.b2<-rnorm(30, mean=20, sd=5)
dB<-data.frame(t(rbind(id,a1.b1,a1.b2,a2.b1,a2.b2)))
dB<-pivot_longer(dB, cols=c('a1.b1','a1.b2', 'a2.b1', 'a2.b2'), names_sep = '\\.', names_to=c('A','B'))
anovakun(dB, 'ABs', long=T)
gB<-ggplot(data=dB, aes(x=A, y=value, fill=B))+geom_boxplot()
plot(gB)


id<-seq(1,30)
a1.b1<-rnorm(30, mean=50, sd=5)
a1.b2<-rnorm(30, mean=50, sd=5)
a2.b1<-rnorm(30, mean=60, sd=5)
a2.b2<-rnorm(30, mean=20, sd=5)
dC<-data.frame(t(rbind(id,a1.b1,a1.b2,a2.b1,a2.b2)))
dC<-pivot_longer(dC, cols=c('a1.b1','a1.b2', 'a2.b1', 'a2.b2'), names_sep = '\\.', names_to=c('A','B'))
anovakun(dC, 'ABs', long=T)
gC<-ggplot(data=dC, aes(x=A, y=value, fill=B))+geom_boxplot()
plot(gC)

id<-seq(1,30)
a1.b1<-rnorm(30, mean=55, sd=10)
a1.b2<-rnorm(30, mean=62, sd=10)
a2.b1<-rnorm(30, mean=60, sd=10)
a2.b2<-rnorm(30, mean=58, sd=10)
dD<-data.frame(t(rbind(id,a1.b1,a1.b2,a2.b1,a2.b2)))
dD<-pivot_longer(dD, cols=c('a1.b1','a1.b2', 'a2.b1', 'a2.b2'), names_sep = '\\.', names_to=c('A','B'))
anovakun(dD, 'ABs', long=T)
gD<-ggplot(data=dD, aes(x=A, y=value, fill=B))+geom_boxplot()
plot(gD)
