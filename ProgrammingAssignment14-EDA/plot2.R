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

# construct plot2 using the base plotting system

boxplot(X1, X2, X3, X4)

boxplot(log10(X1), log10(X2), log10(X3), log10(X4), 
        main = "Total PM2.5 Emissions in Baltimore City, Maryland",
        col = "#4bc6df")

# save plot to a png file

dev.copy(png, file = "plot2.png")
dev.off()