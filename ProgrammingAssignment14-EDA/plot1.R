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

lmts <- range(pm0, pm1, pm2, pm3)

boxplot(pm0, pm1, pm2, pm3,
        ylim = lmts,
        ylab = "Total 2.5 Emissions", 
        names = c("1999", "2002", "2005", "2008"))
axis(2, ylim = c(0, max(pm1["Emissions"])))