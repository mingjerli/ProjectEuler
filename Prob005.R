rm(list=ls())
library(numbers)

recordtable <- table(Primes(20))
for(i in 2:20){
  primetable <- table(primeFactors(i))
  for(pt in names(primetable)){
    recordtable[pt] = max(primetable[pt], recordtable[pt])
  }
}

val <-1
for(rt in names(recordtable)){
  val <- val*(as.numeric(rt))^recordtable[rt]
}
val