rm(list=ls())
source("utility/IsPalindrome.R")

sol <- 0
for(x in 100:999){
  for(y in 100:999){
    xy <- x*y
    if(xy > sol && IsPalindrome(xy)){
      sol <- xy
    }
  }
}
sol