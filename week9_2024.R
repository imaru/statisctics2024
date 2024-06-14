 #d1<-rnorm(50, mean=43, sd=8)
 #d2<-rnorm(50, mean=38, sd=8)

 #d<-data.frame(cbind(d1,d2))
 #saveRDS(d, file='week9d.obj')
 
 d<-readRDS('week9d.obj')
 

library(tidyverse)
library(ggplot2)

ld<-pivot_longer(d,cols=c(d1,d2))
g<-ggplot(data=ld, aes(fill=name, x=value))+geom_histogram(position='dodge', alpha=0.8)
g<-g+labs(y='度数', x='正答数')
plot(g)

mean(d1)
sd(d1)
mean(d2)
sd(d2)

p1<-rnorm(100000, mean=43, sd=8)
p2<-rnorm(100000, mean=38, sd=8)
p<-data.frame(cbind(p1,p2))
lp<-pivot_longer(p,cols=c(p1,p2))
g<-ggplot(data=lp, aes(fill=name, x=value))+geom_density(alpha=0.5)
g<-g+labs(y='度数', x='正答数')
plot(g)

write.csv(d, file='week9data1.csv', row.names = F)

t<-qt(0.05/2, length(d$d1)+length(d$d2)-2, lower.tail = F) 
se<-sqrt((length(d$d1)*var(d$d1)*(length(d$d1)-1)/length(d$d1)+length(d$d2)*var(d$d2)*(length(d$d2)-1)/length(d$d2))/(length(d$d1)+length(d$d2)-2)*(1/length(d$d1)+1/length(d$d2)))
upper<-(mean(d$d1)-mean(d$d2)) + t * se
lower<-(mean(d$d1)-mean(d$d2)) - t * se

x<-seq(-4,4,0.01)
plot(x,dt(x=x,df=98),type='l')


#sp<-((length(d$d1)-1)*var(d$d1)+(length(d$d2)-1)*var(d$d2))/(length(d$d1)+length(d$d2)-2)

#se2<-sqrt(sp/length(d$d1)+sp/length(d$d2))
