
CollatzSequence <- function(n){
  res <- n
  seqlength <- 1
  while(n!=1){
    n<-ifelse(mod(n,2)==0, n/2, 3*n+1)
    seqlength <- seqlength+1
  }
  seqlength
}
