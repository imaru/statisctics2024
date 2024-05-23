d<-c(67, 77, 58, 65, 85, 88, 64, 72, 66, 73, 81, 90)
md<-mean(d)
vard<-var(d)
sdd<-sd(d)
df<-length(d)-1
t<-qt(0.05/2,df,lower.tail = F)
ciu<-md+t*sdd/sqrt(length(d))
cil<-md-t*sdd/sqrt(length(d))
