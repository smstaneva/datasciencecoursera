# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

dim(NEI)
head(NEI)

# check class

x0 <- NEI$Emissions
class(x0)

str(x0)
summary(x0)

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
summary(x1)

x2<- pm2$Emissions
summary(x2)

x3<- pm3$Emissions
summary(x3)

x4<- pm4$Emissions
summary(x4)