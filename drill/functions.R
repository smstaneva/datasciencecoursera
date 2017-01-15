add2 <- function(x, y){
  x + y
}
add2(3, 5)

above <- function(x, n){
  use <- x > n
  x[use]
}
x <- 1:20
above(x, 12)

above <- function(x, n = 10){
  use <- x > n
  x[use]
}
above(x)

columnmean <- function(y){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[, i])
  }
  means
}
columnmean(airquality)

columnmean <- function(y, removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}
columnmean(airquality)

columnmean <- function(y, removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}
columnmean(airquality, FALSE)
