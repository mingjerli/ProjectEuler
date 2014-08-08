rm(list=ls())
library(numbers)


sol <-0
i<-1
while(sol == 0){
  n <- sum(1:i)
  primetable <- table(primeFactors(n))
  ndivisor <- prod(primetable +1)-1
  if(ndivisor>500){
    sol <- n
  }
  i <- i+1
}
print(sol)