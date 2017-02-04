x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x

x[1]

x[4]

x[c(1, 3)]

x[1:4]

1:4

c(1, 2, 3, 4)

x[c(1,1,3)]

x[6]

x[0]

x[-2]

x[c(-1, -5)]  

x[-c(1,5)]

x[-1:3]

x[-(1:3)]

x <- x[-4]
x

x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)

x[2:4]

x[-c(1,5)]

x[c("b", "c", "d")]

x[c(2,3,4)]

x[c("a", "c")]

x[-which(names(x) == "a")]

names(x) == "a"

which(names(x) == "a")

x[-which(names(x) %in% c("a", "c"))]

x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)

x[-which(names(x) == "g")]

x <- 1:3
x

names(x) <- c('a', 'a', 'a')
x

x['a']

x[which(names(x) == 'a')]

names(x) == c('a', 'c')

c("a", "b", "c", "e")

c("a", "c")

c("a", "b", "c", "e")

c("a", "c", "a", "c")

names(x) == c('a', 'c', 'e')

x[c(TRUE, TRUE, FALSE, FALSE)]

x[c(TRUE, FALSE)]

x[x > 7]

x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)

x_subset <- x[x<7 & x>4]
print(x_subset)

f <- factor(c("a", "a", "b", "c", "c", "d"))
f[f == "a"]

f[f %in% c("b", "c")]

f[1:3]

f[-3]

set.seed(1)
m <- matrix(rnorm(6*4), ncol=4, nrow=6)
m[3:4, c(3,1)]

m[, c(3,4)]

m[3,]

m[3, , drop=FALSE]

m[, c(3,6)]

m[5]

matrix(1:6, nrow=2, ncol=3)

matrix(1:6, nrow=2, ncol=3, byrow=TRUE)

m <- matrix(1:18, nrow=3, ncol=6)
print(m)

xlist <- list(a = "Software Carpentry", b = 1:10, data = head(iris))
xlist[1]

xlist[1:2]

xlist[[1]]

xlist[[1:2]]

xlist[[-1]]

xlist[["a"]]

xlist$data

xlist <- list(a = "Software Carpentry", b = 1:10, data = head(iris))
xlist$b[2]

xlist[[2]][2]

xlist[["b"]][2]

mod <- read.csv(file = "data/gapminder-FiveYearData.csv")
attributes(mod)

mod$df.residual