# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

x0 <- subset(NEI, fips == "24510")

pm1 <- subset(x0, x0$year == 1999)
pm2 <- subset(x0, x0$year == 2002)
pm3 <- subset(x0, x0$year == 2005)
pm4 <- subset(x0, x0$year == 2008)

head(pm1)

x1 <- pm1$Emissions
x2 <- pm2$Emissions
x3 <- pm3$Emissions
x4 <- pm4$Emissions

# construct plot2 using the base plotting system

boxplot(x1, x2, x3, x4)

boxplot(log10(x1), log10(x2), log10(x3), log10(x4), 
        main = "Total Emissions from PM2.5 in Baltimore City, Maryland",
        names = c("1999", "2002", "2005", "2008"),
        col = "#4bc6df")

# save plot to a png file

dev.copy(png, file = "plot2.png")
dev.off()