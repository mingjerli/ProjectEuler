rm(list=ls())
library(numbers)

Nmax <- 4000000
N <- floor(log(Nmax,1.5))+1
fib400 <- fibonacci(N,sequence = TRUE)
fib400even <- fib400[mod(fib400,2)==0 & fib400 <=Nmax]
sum(fib400even)

