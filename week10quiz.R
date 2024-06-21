#dat1<-rnorm(100, mean=75, sd=8)
#dat2<-rnorm(100, mean=70, sd=8)

#dat<-data.frame(t(rbind(dat1, dat2)))

saveRDS(dat, file='week10dat.obj')
write.csv(dat, file='week10data2.csv', row.names = F)

