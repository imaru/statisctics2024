d2<-c(7,6,8,10,6,5,7)
sd(d2)

d3<-read.csv('2024middata1.csv')
hist(d3$x)
hist(d3$y)
plot(d3$x, d3$y)
r<-cor(d3$x, d3$y)
b<-r*sd(d3$y)/sd(d3$x)
a<-mean(d3$y)-b*mean(d3$x)
e2<-sum((d3$y-(a+b*d3$x))^2)
y2<-sum((d3$y-mean(d3$y))^2)
r2<-1-e2/y2

d4<-read.csv('2024middata2.csv')
length(d4$z)
m<-mean(d4$z)
s<-sd(d4$z)
se<-s/sqrt(length(d4$z))
t<-qt(0.05/2, 99, lower.tail = F)
ci_i <- m-t*se
ci_u <- m+t*se
