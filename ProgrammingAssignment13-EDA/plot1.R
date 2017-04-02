# calculate a rough estimate of how much memory the dataset will require

# nrow = 2,075,259
# ncol = 9
# GB = ?
# 2,075,259 * 9 * 8 bytes/numeric = 149418648 bytes = 0.149418648GB
# required = 0.149418648GB * 2 = 0.298837296GB
# required < RAM

# read the data from the dates 2007-02-01 and 2007-02-02

# head -n 3 household_power_consumption.txt
# grep "Date\|1/2/2007\|2/2/2007" household_power_consumption.txt > grep.txt

# remove missing values coded as ?

# grep -v "?\|11/2/2007\|12/2/2007\|21/2/2007\|22/2/2007" grep.txt > grep-v.txt

consumption <- read.table("./data/grep-v.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE) 
head(consumption)

# convert the Date and Time variables to Date/Time classes

lapply(consumption, class)
unique <- unique(consumption$Date)

Time <- strptime(consumption$Time, "%H:%M:%S")
class(Time)

class(consumption$Date)
Date <- as.Date(consumption$Date)
class(Date)

# reconstruct Plot 1 using the base plotting system

hist(consumption$Global_active_power, 
     breaks = seq(0, 10, by = 0.5), 
     col = "#800020", 
     main = "Global Active Power", 
     xlim = c(0, 7.5), 
     ylim = c(0, 1200),
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency")

# save the plot to a PNG file with a width of 480 pixels and a height of 480 pixels

dev.copy(png, file = "plot1.png")
dev.off()

