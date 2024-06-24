dw<-read.csv('week11data1.csv')

temp<-cbind(seq(1,30),dw)
colnames(temp)<-c('id','data1','data2')
dl<-pivot_longer(temp,cols=c('data1','data2'))

saveRDS(dl, file='week11data1_2.obj')
write.csv(dl, file='week11data1_2.csv', row.names = F)

saveRDS(dw, file='week11data1_1.obj')
write.csv(dw, file='week11data1_1.csv', row.names = F)

sem1<-rnorm(32, mean=63, sd=10)
sem2<-rnorm(32, mean=72, sd=12)

d2<-data.frame(t(rbind(sem1, sem2)))

saveRDS(d2, file='week11data2.obj')
write.csv(d2, file='week11data2.csv', row.names = F)

class1<-rnorm(32, mean=63, sd=10)
class2<-rnorm(31, mean=58, sd=9)

library(tidyr)


d3<-rbind(tidyr::pivot_longer(data.frame(class1,cols='class1')),pivot_longer(data.frame(class2),cols='class2'))
colnames(d3)<-c('class','score')

saveRDS(d3, file='week11data3.obj')
write.csv(d3, file='week11data3.csv', row.names = F)

res2<-t.test(dat1,dat2,paired = T, alternative = 'two.sided')
res3<-t.test(d3$score~d3$class)

print(res2)
print(res3)
