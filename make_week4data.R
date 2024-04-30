n<-1000
s1<-3
m1<-10
s2<-1
m2<-10
icpt<-10
sds<-10

x1<-rnorm(n,m1,sd=sds)
y1<-x1*s1+icpt+rnorm(n,0,s1*10)

plot(x1,y1,ylim=c(-150,200))
cor(x1,y1)

attach(dat2)

plot(x2,y2,ylim=c(-50,100))
cor(x2,y2)

a1=cor(x1,y1)*sd(y1)/sd(x1)
b1=mean(y1)-a1-mean(x1)

a2=cor(x2,y2)*sd(y2)/sd(x2)
b2=mean(y2)-a2

dat1<-data.frame(cbind(x1,y1))
dat2<-data.frame(cbind(x2,y2))
write.csv(dat1,file='week4dat1.csv')
write.csv(dat2,file='week4dat2.csv')
