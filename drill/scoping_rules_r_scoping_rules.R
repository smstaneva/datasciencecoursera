cube <- make.power(3)
cube(3)

square <- make.power(2)
square(3)

ls(environment(cube))

get("n", environment(cube))

ls(environment(square))

get("n", environment(square))

y <- 10
f <- function(x){
  y <- 2
  y ^ 2 + g(x)
}
g <- function(x){
  x*y
}
f(3)

g <- function(x){
  a <- 3
  x + a + y
}
g(2)

y <- 3
g(2)