rm(list=ls())

library(numbers)
library(plyr)

primeSumGoal <- function(goalN){
  storage <- list()
  length(storage) <- length(storage) +100

  primeList <- function(n0){
    if(n0<=1){
      return( list() )
    }

    primes <- Primes(n0)
    result <- list()
    
    for(p in primes){
      if(p==n0){
        result <- as.list(c(result, p))
      }
      else{
        if(length(storage[[n0-p]])==0 ){
          storage[[n0-p]] <- primeList(n0-p)
        }
        tempresult <- llply(storage[[n0-p]], function(x){sort(c(x,p))})
        if(length(tempresult) >0){
          if(length(result) ==0 ){
            result <- tempresult
          }
          else{  
            result <- as.list(c(result, tempresult))
          }
        }
      }
    }
    
    # check repeat  
    result <- unique(result)
    result
  }  
  
  currentN <- 0
  n <- 0
  while(currentN < goalN){
    n <- n +1
    print(paste("start n=", n))
    if (n > length(storage)){ length(storage) <- length(storage) + 100}
    storage[[n]] <- primeList(n)
    print(length(storage[[n]]))
    #print(storage[[n]])
    print(paste("end n=", n))
    testN <- length(storage[[n]])
    currentN <- max(testN, currentN)
  }
  n
}


primeSumGoal(5000)