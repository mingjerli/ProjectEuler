CharPower <- function(a,n){
  str <- as.character(a)
  if(n>1){
    for(i in 2:n){
      digit <- as.numeric(str)*a
      for(d in length(digit):2){
        if(digit[d]>9){
          digit[d] = mod(digit[d],10)
          digit[d-1] = digit[d-1] + floor(digit[d]/10)
        }
      }
      adddigit <- NULL
      if(digit[1]>9){
        digit[1] = mod(digit[1],10)
        adddigit <-  floor(digit[1]/10)
      }
      str <- as.character(c(adddigit, digit))
    }
  }
  str
}

