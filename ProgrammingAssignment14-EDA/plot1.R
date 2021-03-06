# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# check class

x0 <- NEI$Emissions
class(x0)

pm1<- NEI[which(NEI$year == 1999), ]
dim(pm1)
head(pm1)
str(pm1)
summary(pm1)

pm2<- NEI[which(NEI$year == 2002), ]
dim(pm2)
head(pm2)
str(pm2)
summary(pm2)

pm3<- NEI[which(NEI$year == 2005), ]
dim(pm3)
head(pm3)
str(pm3)
summary(pm3)

pm4<- NEI[which(NEI$year == 2008), ]
dim(pm4)
head(pm4)
str(pm4)
summary(pm4)

x1 <- pm1$Emissions
str(x1)
summary(x1)

x2<- pm2$Emissions
str(x2)
summary(x2)

x3<- pm3$Emissions
str(x3)
summary(x3)

x4<- pm4$Emissions
str(x4)
summary(x4)

# construct plot1 using base plotting system

boxplot(x1, x2, x3, x4)

boxplot(log10(x1), log10(x2), log10(x3), log10(x4), 
        main = "Total Emissions from PM2.5",
        names = c("1999", "2002", "2005", "2008"),
        col = "#800020")

# save plot to a png file

dev.copy(png, file = "plot1.png")
dev.off()