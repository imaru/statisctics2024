ns<-30
d1<-rnorm(ns,50, 15)
d2<-rnorm(ns,60, 10)
d3<-rnorm(ns,58, 15)
d<-data.frame(t(rbind(d1,d2,d3)))
write.csv(d,'week12_1.csv',row.names=F, col.names=F)
