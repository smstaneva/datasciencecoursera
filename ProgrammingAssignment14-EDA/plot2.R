# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# construct plot2 using the base plotting system

# show PM2.5 emission for each year

NEI <- cbind(rownames(NEI), NEI)
rownames(NEI) <- NULL
colnames(NEI) <- c("State.Code", "fips", "SCC", "Pollutant", "Emissions", "type", "year")

site0 <- unique(subset(NEI, year =="1999" & fips =="24510", c(fips, SCC)))
site1 <- unique(subset(NEI, year =="2002" & fips =="24510", c(fips, SCC)))
site2 <- unique(subset(NEI, year =="2005" & fips =="24510", c(fips, SCC)))
site3 <- unique(subset(NEI, year =="2008" & fips =="24510", c(fips, SCC)))

head(site0)

SITE0 <- paste(site0[,1], site0[,2], sep = "." )
str(site0)
SITE1 <- paste(site1[,1], site1[,2], sep = "." )
str(site1)
SITE2 <- paste(site2[,1], site2[,2], sep = "." )
str(site2)
SITE3 <- paste(site3[,1], site3[,2], sep = "." )
str(site3)

both <- intersect(SITE0, SITE1, SITE2, SITE3)
both