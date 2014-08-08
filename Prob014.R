rm(list=ls())
source("utility/CollatzSequence.R")

n<-2
sol<-n
maxLength <- length(CollatzSequence(n))

for(n in 2:1000000){
  if(mod(n,100)==0){print(n)}
  nLength <- CollatzSequence(n)
  if(nLength > maxLength){
    sol<-n
    maxLength <- nLength
  }
}
print(sol)