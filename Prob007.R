rm(list=ls())
library(numbers)
N<-10001
count<-1
i<-3
sol<-2

while(count < N){
  if(isPrime(i)){
    count <- count+1
    sol<-i
    print(paste(count, sol))
  }
  i<-i+2
}
