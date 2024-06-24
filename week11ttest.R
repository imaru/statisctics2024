d<-read.csv('week11data1.csv')

res2<-t.test(d$d1, d$d2, var.equal = F)
print(res2)
