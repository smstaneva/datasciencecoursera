# read the data from the files

dir()

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

dim(NEI)

head(NEI)

# check for missing values

x0 <- NEI$Emissions
str(x0)

mean(is.na(x0))

# check class

class(x0)

# construct plot1 using the base plotting system

pm0 <- NEI[which(NEI$year == 1999),"Emissions"]
summary(pm0)

pm1 <- NEI[which(NEI$year == 2002), "Emissions"]
summary(pm1)

pm2 <- NEI[which(NEI$year == 2005), "Emissions"]
summary(pm2)

pm3 <- NEI[which(NEI$year == 2008), "Emissions"]
summary(pm3)

boxplot(Emissions ~ year, NEI,
        main = "Total PM2.5 Emissions",
        col = "#800020", 
        ylim = c(0, 0.4))

# save the plot to a PNG file with a width of 480 pixels and a height of 480 pixels

dev.copy(png, file = "plot1.png")
dev.off()

