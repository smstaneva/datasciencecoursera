# reconstruct Plot 3 using the base plotting system

consumption <- read.table("./data/grep-v.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

library(lubridate)
Date <- dmy(consumption$Date)
dow <- wday(Date, label = TRUE)

Time <- strptime(consumption$Time, "%H:%M:%S")
class(Time)

plot(consumption$Sub_metering_1,
     axes = FALSE,
     ylim = range(c(consumption$Sub_metering_1, consumption$Sub_metering_2, consumption$Sub_metering_3)),
     xlab = "",
     ylab = "Energy sub metering",
     type = "l",
     col = "black")
axis(2, ylim = c(0, max(consumption$Sub_metering_1)), col = "black", lwd = 2)


par(new = T)
plot(consumption$Sub_metering_2,
     axes = FALSE,
     ylim = range(c(consumption$Sub_metering_1, consumption$Sub_metering_2, consumption$Sub_metering_3)),
     xlab = "",
     ylab = "", 
     type = "l",
     col = "#cd0033")

par(new = T)
plot(consumption$Sub_metering_3,
     axes = FALSE,
     ylim = range(c(consumption$Sub_metering_1, consumption$Sub_metering_2, consumption$Sub_metering_3)),
     xlab = "",
     ylab = "", 
     type = "l",
     col = "#4bc6df")

legend("topright", pch = 150, col = c("black", "#cd0033", "#4bc6df"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), x.intersp = 0.5)
axis(1, at = c(0, 1500, 2900), labels = c("Thu", "Fri", "Sat"))
box()

# save the plot to a PNG file with a width of 480 pixels and a height of 480 pixels

dev.copy(png, file = "plot3.png")
dev.off()