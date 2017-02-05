dnorm(x, mean = 0, sd = 1, log = FALSE)

x <- rnorm(10)
x

x <- rnorm(10, 20, 2)
x

summary(x)

set.seed(1)
rnorm(5)

rpois(10, 1)

ppois(2, 2)