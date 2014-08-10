rm(list=ls())

A1_10 <- c("one","two","three","four","five","six","seven","eight","nine","ten")
A11_20 <- c("eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen","twenty")
A10_100 <- c("ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety","hundred")

count2 <- 0
for(i in 1:999){
  print(i)
  str <- NULL
  if(i >= 100){
    str <- c(str, A1_10[floor(i/100)], A10_100[10])
    if(mod(i,100)!=0){
      str <- c(str,"and")
    }
  }
  if(mod(i,100) <= 10){
    str <- c(str,A1_10[mod(i,100)])
  }
  if(mod(i,100) >10 && mod(i,100)<=20){
    str <- c(str,A11_20[mod(i-10,100)])
  }
  if(mod(i,100) >20 && mod(i,100)<100){
    str <- c(str,paste(A10_100[floor(mod(i,100)/10)], A1_10[mod(mod(i,100),10)], sep=""))
  }
  print(paste(str, collapse = " "))
  count2 <- count2 + nchar(paste(str, collapse = ""))
}

print(count2)
count2 <- count2 + nchar("onethousand")
print(count2)