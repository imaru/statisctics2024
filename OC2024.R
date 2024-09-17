library(qualtRics)
library(ggplot2)

fn<-choose.files()
dat<-qualtRics::read_survey(fn)
attach(dat)

scond<-c(rep('control',nrow(dat)), rep('conflict', nrow(dat)))
#rcond<-c(rep('manual', nrow(dat)*2),rep('oral', nrow(dat)*2))
#stroop<-c(scond,scond)
rtdat<-data.frame(c(Q2,Q4))
cordat<-data.frame(c(Q1,Q3))
rtdat<-cbind(rtdat,scond)
cordat<-cbind(cordat,scond)
colnames(rtdat)<-c('ReactionTime','stroop')
colnames(cordat)<-c('cor','stroop')

grt<-ggplot(data = rtdat, mapping = aes(fill=stroop,y=ReactionTime))
grt <- grt + geom_boxplot()
plot(grt)

gcor<-ggplot(data = cordat, mapping = aes(fill=stroop, y=cor))
gcor<-gcor+geom_boxplot()
plot(gcor)

anovadat<-data.frame(cbind(Q2,Q4))
source('anovakun_489.txt')
anovakun(anovadat,'sA',2)

