# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

pm1 <- subset(NEI, fips == "24510")

head(pm1)

# construct plot3 using ggplot2 plotting system

library("ggplot2")

ggplot(data = pm1, aes(x = year, y = Emissions, color = type)) +
        geom_line() + 
        facet_wrap( ~ type) +
        ggtitle("PM2.5 Emissions in Baltimore City by Type")

# save plot to a png file

dev.copy(png, file = "plot3.png")
dev.off()