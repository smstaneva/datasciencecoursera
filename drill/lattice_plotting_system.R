library(lattice)
library(datasets)
xyplot(Ozone ~ Wind, data = airquality)

library(datasets)
library(lattice)
airquality <- transform(airquality, Month = factor(Month))
xyplot(Ozone ~ Wind | Month, data = airquality, layout = c(5, 1))

p <- xyplot(Ozone ~ Wind, data = airquality)
print(p)

xyplot(Ozone ~ Wind, data = airquality)