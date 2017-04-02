head(airquality)

xyplot(Ozone ~ Wind, airquality)

xyplot(Ozone ~ Wind, airquality, pch = 8, col = "red", main = "Big Apple Data")

xyplot(Ozone ~ Wind | as.factor(Month), airquality, layout = c(5, 1))

xyplot(Ozone ~ Wind | Month, airquality, layout = c(5, 1))

p <- xyplot(Ozone~Wind,data=airquality)
p

names(p)

mynames[myfull]

p[["formula"]]

p[["x.limits"]]

table(f)

xyplot(y ~ x | f, layout = c(2, 1))

v1

v2

myedit("plot1.R") 

source(pathtofile("plot1.R"), local = TRUE)

myedit("plot2.R")

str(diamonds)

table(diamonds$color)

table(diamonds$color, diamonds$cut)

myedit("myLabels.R")

source(pathtofile("myLabels.R"), local =TRUE)

xyplot(price ~ carat | color*cut, diamonds, strip = FALSE, pch = 20, xlab = myxlab, ylab = myylab, main = mymain)

xyplot(price ~ carat | color*cut, diamonds, pch = 20, xlab = myxlab, ylab = myylab, main = mymain)

