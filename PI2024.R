library(qualtRics)
library(ggplot2)

fn<-choose.files()
dat<-qualtRics::read_survey(fn)
attach(dat)

scond<-c(rep('control',nrow(dat)), rep('conflict', nrow(dat)))
rcond<-c(rep('manual', nrow(dat)*2),rep('oral', nrow(dat)*2))
stroop<-c(scond,scond)
rtdat<-data.frame(c(Q2,Q4,Q6,Q8))
cordat<-data.frame(c(Q1,Q3,Q5,Q7))
rtdat<-cbind(rtdat,rcond,stroop)
cordat<-cbind(cordat,rcond,stroop)
colnames(rtdat)<-c('ReactionTime','stroop','response')
colnames(cordat)<-c('cor','stroop', 'response')

grt<-ggplot(data = rtdat, mapping = aes(x=stroop,y=ReactionTime,fill=response))
grt <- grt + geom_boxplot()
plot(grt)

gcor<-ggplot(data = cordat, mapping = aes(x=stroop, y=cor, fill=response))
gcor<-gcor+geom_boxplot()
plot(gcor)

anovadat<-data.frame(cbind(Q2,Q4,Q6,Q8))
source('anovakun_489.txt')
anovakun(anovadat,'sAB',2,2)

library(qrcode)
qc1<-qrcode::qr_code("https://imaru.github.io/PI2024/exp1.html")
plot(qc1)

qc2<-qrcode::qr_code("https://imaru.github.io/PI2024/exp2.html")
plot(qc2)

qc3<-qrcode::qr_code("https://imaru.github.io/PI2024/exp3.html")
plot(qc3)

qc4<-qrcode::qr_code("https://imaru.github.io/PI2024/exp4.html")
plot(qc4)
