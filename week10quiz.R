#dat1<-rnorm(100, mean=75, sd=8)
#dat2<-rnorm(100, mean=70, sd=8)

#dat<-data.frame(t(rbind(dat1, dat2)))

saveRDS(d, file='week10dat.obj')
write.csv(d, file='week10data1.csv', row.names = F)

