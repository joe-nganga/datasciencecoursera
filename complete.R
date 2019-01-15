#trying out the complete cases function

complete <-function(directory, id=1:332){
  dir <- list.files(directory,full.names = T)
  data <- data.frame()
  nobs <- data.frame()
  ret <- data.frame()
  for (i in id){
    data<- read.csv(dir[i],header = T)
    nobs <- sum(complete.cases(data))
    ret<-rbind(ret,data.frame(i,nobs))
  }
  ret
}