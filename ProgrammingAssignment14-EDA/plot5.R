# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

pm1 <- subset(NEI, type == "ON-ROAD" & fips == "24510")

PM1 <- subset(pm1, pm1$year == 1999)
PM2 <- subset(pm1, pm1$year == 2002)
PM3 <- subset(pm1, pm1$year == 2005)
PM4 <- subset(pm1, pm1$year == 2008)

head(PM1)

X1 <- PM1$Emissions
X2 <- PM2$Emissions
X3 <- PM3$Emissions
X4 <- PM4$Emissions