rm(list=ls())
library(numbers)

N<-999
multiple3 <- seq(3,N, by=3)
multiple5 <- seq(5,N, by=5)
multiple35 <- unique(c(multiple3, multiple5))
sum(multiple35)
