rp<-10000
roku<-matrix(NA,1,rp)
for (i in 1:rp){
  d<-as.integer(runif(30, min=1, max=7))
  roku[i]<-sum(d==6) 
}
hist(roku, xlim=c(0,30))

     