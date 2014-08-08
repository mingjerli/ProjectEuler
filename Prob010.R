rm(list=ls())
library(numbers)

N<-2000000
sol <- sum(Primes(N))
print(sol)