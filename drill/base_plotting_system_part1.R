library(datasets)
hist(airquality$Ozone)

library(datasets)
with(airquality, plot(Wind, Ozone))

library(datasets)
airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone(ppb)")

par("lty")

par("col")

par("pch")

par("bg")

par("mar")

par("mfrow")