myfunction <- function(){
  x <- rnorm(100)
  mean(x)
}
ls()

myfunction()

dir()

second <- function(x){
  x <- rnorm(length(x))
}
second(4)

second(4:10)

