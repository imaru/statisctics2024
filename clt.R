library(dplyr)

nd<-100000
d<-rpois(nd,5)
hist(d)

n<-100
ss<-100
ms<-matrix(1,n)
for (i in 1:n){
  ms[i]<-mean(dplyr::sample_n(data.frame(d),ss)$d)
}
hist(ms)
