# reconstruct Plot 2 using the base plotting system

consumption <- read.table("./data/grep-v.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

library(lubridate)
Date <- dmy(consumption$Date)
dow <- wday(Date, label = TRUE)

plot(consumption$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)", 
     xaxt = "n")
axis(1, at = c(0, 1500, 2900), labels = c("Thu", "Fri", "Sat"))

