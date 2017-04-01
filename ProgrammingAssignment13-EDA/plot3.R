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
     col = "#800020")

par(new = T)
plot(consumption$Sub_metering_3,
     axes = FALSE,
     ylim = range(c(consumption$Sub_metering_1, consumption$Sub_metering_2, consumption$Sub_metering_3)),
     xlab = "",
     ylab = "", 
     type = "l",
     col = "#04285a")

legend("topright", col = c("black", "#800020", "#04285a"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
axis(1, at = c(0, 1500, 2900), labels = c("Thu", "Fri", "Sat"))
