# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


pm1<- NEI[which(NEI$year == 1999), ]
pm2<- NEI[which(NEI$year == 2002), ]
pm3<- NEI[which(NEI$year == 2005), ]
pm4<- NEI[which(NEI$year == 2008), ]

PM1 <- pm1[which(pm1$fips == "24510"),]
PM2 <- pm2[which(pm2$fips == "24510"),]
PM3 <- pm3[which(pm3$fips == "24510"),]
PM4 <- pm4[which(pm4$fips == "24510"),]

head(PM1)

X1 <- PM1$Emissions
X2 <- PM2$Emissions
X3 <- PM3$Emissions
X4 <- PM4$Emissions
