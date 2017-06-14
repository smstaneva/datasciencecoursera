# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# construct plot2 using the base plotting system

# show PM2.5 emission for each year

NEI <- cbind(rownames(NEI), NEI)
rownames(NEI) <- NULL
colnames(NEI) <- c("Site.ID", "fips", "SCC", "Pollutant", "Emissions", "type", "year")

pm0 <- NEI[which(NEI$year == 1999 & NEI$fips =="24510"),"Emissions"]
summary(pm0)

pm1 <- NEI[which(NEI$year == 2002 & NEI$fips =="24510"), "Emissions"]
summary(pm1)

pm2 <- NEI[which(NEI$year == 2005 & NEI$fips =="24510"), "Emissions"]
summary(pm2)

pm3 <- NEI[which(NEI$year == 2008 & NEI$fips =="24510"), "Emissions"]
summary(pm3)

boxplot(Emissions ~ year, NEI, NEI$fips =="24510",
        main = "Total PM2.5 Emissions in Baltimore, Maryland",
        col = "#800020",
        ylim = c(0, 0.4))