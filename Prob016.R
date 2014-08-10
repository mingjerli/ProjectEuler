rm(list=ls())

source("utility//CharPower.R")

solchar <- CharPower(2,1000)
solnum <- as.numeric(solchar)
sol <- sum(solnum)
