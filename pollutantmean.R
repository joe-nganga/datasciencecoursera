pollutantmean <- function(directory,pollutant, id=1:332){
  dir <- list.files(directory,full.names = T)
  data <- data.frame()
  for (i in id){
    data <- rbind(data,read.csv(dir[i]))
  }
  mean(data[,pollutant],na.rm = T)
}