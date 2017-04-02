# reconstruct Plot 4 using the base plotting system

consumption <- read.table("./data/grep-v.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

Time <- strptime(consumption$Time, "%H:%M:%S")

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))

plot(consumption$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power", 
     xaxt = "n")
axis(1, at = c(0, 1500, 2900), labels = c("Thu", "Fri", "Sat"))

plot(consumption$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage", 
     xaxt = "n")
axis(1, at = c(0, 1500, 2900), labels = c("Thu", "Fri", "Sat"))

plot(consumption$Sub_metering_1,
     axes = FALSE,
     ylim = range(c(consumption$Sub_metering_1, consumption$Sub_metering_2, consumption$Sub_metering_3)),
     xlab = "",
     ylab = "Energy sub metering",
     type = "l",
     col = "black", 
     bty = "o")
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

legend("topright", pch = 150, bty = "n", col = c("black", "#cd0033", "#4bc6df"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
axis(1, at = c(0, 1500, 2900), labels = c("Thu", "Fri", "Sat"))
box()

plot(consumption$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power", 
     xaxt = "n")
axis(1, at = c(0, 1500, 2900), labels = c("Thu", "Fri", "Sat"))
box()

# save the plot to a PNG file with a width of 480 pixels and a height of 480 pixels

dev.copy(png, file = "plot4.png")
dev.off()