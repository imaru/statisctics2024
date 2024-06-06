d1<-rnorm(50, mean=43, sd=8)
d2<-rnorm(50, mean=38, sd=6)

d<-data.frame(cbind(d1,d2))

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
