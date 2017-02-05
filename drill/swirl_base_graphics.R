data(cars)
data(cars)

plot(cars)

plot(x = cars$speed, y = cars$dist)

plot(x = cars$dist, y = cars$speed)

plot(x = cars$speed, y = cars$dist, xlab = "Speed")

plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance")

plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")

plot(cars, main = "My Plot")

plot(cars, sub = "My Plot Subtitle")

plot(cars, col = 2)

plot(cars, xlim = c(10, 15))

plot(cars, pch = 2)

data(mtcars)
boxplot(formula = mpg ~ cyl, data = mtcars)

hist(mtcars$mpg)