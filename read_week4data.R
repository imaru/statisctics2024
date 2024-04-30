dat1<-read.csv('week4dat1.csv')
dat2<-read.csv('week4dat2.csv')

attach(dat1)
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

f1<-function(x) a1+x*b1
plot(x1,y1)
par(new=T)
plot(f1, min(x1), max(x1), col='red', lwd=5)

f2<-function(x) a2+x*b2
plot(x2,y2)
par(new=T)
plot(f2, min(x2), max(x2), col='red', lwd=5)

e1<-y1-(b1+a1*x1)
R1<-1-sum(e1^2)/sum(y1^2)

e2<-y2-(b2+a2*x2)
R2<-1-sum(e2^2)/sum(y2^2)
