dat1<-read.csv('week4dat1.csv')
dat2<-read.csv('week4dat2.csv')

plot(dat1$x1,dat1$y1,ylim=c(-150,200))
cor(dat1$x1,dat1$y1)

plot(dat2$x2,dat2$y2,ylim=c(-50,100))
cor(dat2$x2,dat2$y2)

a1=cor(dat1$x1,dat1$y1)*sd(dat1$y1)/sd(dat1$x1)
b1=mean(dat1$y1)-a1*mean(dat1$x1)

a2=cor(dat2$x2,dat2$y2)*sd(dat2$y2)/sd(dat2$x2)
b2=mean(dat2$y2)-a2*mean(dat2$x2)


f1<-function(x) a1+x*b1
plot(dat1$x1,dat1$y1)
par(new=T)
plot(f1, min(dat1$x1), max(dat1$x1), col='red', lwd=5)

f2<-function(x) a2+x*b2
plot(dat2$x2,dat2$y2)
par(new=T)
plot(f2, min(dat2$x2), max(dat2$x2), col='red', lwd=5)

e1<-dat1$y1-(b1+a1*dat1$x1)
R1<-1-sum(e1^2)/sum(dat1$y1^2)

e2<-dat2$y2-(b2+a2*dat2$x2)
R2<-1-sum(e2^2)/sum(dat2$y2^2)

