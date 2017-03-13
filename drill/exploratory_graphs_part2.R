boxplot(pm25 ~ region, data = pollution, col = "red")

par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(subset(pollution, region == "east")$pm25, col = "green")

hist(subset(pollution, region == "west")$pm25, col = "green")

with(pollution, plot(latitude, pm25))

abline(h = 12, lwd = 2, lty = 2)

with(pollution, plot(latitude, pm25, col = region))

abline(h = 12, lwd = 2, lty = 2)

par(mfrow = c(1, 2), mar = c(5, 4, 2, 1))
with(subset(pollution, region == "west"), plot(latitude, pm25, main = "West"))

with(subset(pollution, region == "east"), plot(latitude, pm25, main = "East"))
