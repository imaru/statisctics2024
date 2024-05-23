d<-c(6,3,10,5,5,8,9)
v<-sum((mean(d)-d)^2)/length(d)
print(v)
var(d)*6/7

z<-(8-mean(d))/sd(d)

d1<-rnorm(30, 50, 10)
d2<-d1+runif(30)*20
cor(d1,d2)
plot(d1,d2)
ds<-data.frame(cbind(d1,d2))
write.csv(ds,file='week7dat1.csv', row.names = F)
