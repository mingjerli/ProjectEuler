IsPalindrome <- function(N){
  Nstr <- as.character(N)
  revNstr <- paste(rev(strsplit(Nstr,NULL)[[1]]), collapse="")
  Nstr==revNstr
}