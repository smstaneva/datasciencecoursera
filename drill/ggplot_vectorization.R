x <- 1:4
x * 2

y <- 6:9
x + y

gapminder <- read.csv(file = "data/gapminder-FiveYearData.csv")
gapminder$pop_millions <- gapminder$pop / 1e6
head(gapminder)

library(ggplot2)
ggplot(gapminder, aes(x = year, y = pop_millions)) +
        geom_point()

countryset <- c("China","India","Indonesia")
ggplot(gapminder[gapminder$country %in% countryset,],
       aes(x = year, y = pop_millions)) +
        geom_point()

x > 2

a <- x > 3
a

x <- 1:4
log(x)

m <- matrix(1:12, nrow=3, ncol=4)
m * -1

m %*% matrix(1, nrow=4, ncol=1)

matrix(1:4, nrow=1) %*% matrix(1:4, ncol=1)

m <- matrix(1:12, nrow=3, ncol=4)
m

m ^ -1

m * c(1, 0, -1)

m > c(0, 20)

sum(1/(1:100)^2)

sum(1/(1:1e04)^2)

n <- 10000
sum(1/(1:n)^2)


inverse_sum_of_squares <- function(n) {
        sum(1/(1:n)^2)
}


inverse_sum_of_squares(10000)


n <- 10000
inverse_sum_of_squares(n)
inverse_sum_of_squares(100)
