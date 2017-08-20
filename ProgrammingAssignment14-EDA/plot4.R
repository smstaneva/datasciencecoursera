# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

pm1 <- subset(NEI, SCC == "10100101")

PM1 <- subset(pm1, pm1$year == 1999)
PM2 <- subset(pm1, pm1$year == 2002)
PM3 <- subset(pm1, pm1$year == 2005)
PM4 <- subset(pm1, pm1$year == 2008)

head(PM1)

X1 <- PM1$Emissions
X2 <- PM2$Emissions
X3 <- PM3$Emissions
X4 <- PM4$Emissions

# construct plot4 using base plotting system
boxplot(X1, X2, X3, X4)

boxplot(log10(X1), log10(X2), log10(X3), log10(X4), 
        main = "Emissions from Coal Combustion - Related Sources across USA",
        col = "#bfb6b4")

# save plot to a png file

dev.copy(png, file = "plot4.png")
dev.off()