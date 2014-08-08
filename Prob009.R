rm(list=ls())
library(numbers)

data<-pythagorean_triples(1,500)[,3:5]
ratio <- apply(data,1,sum)/1000
data2 <- data/ratio
data3 <- data2-floor(data2) ==0

sol <- NULL
for(i in 1:dim(data3)[1]){
  if(all(data3[i,])){
    print(data2[i,])
    sol <- prod(data2[i,])
  }
}
print(sol)