# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# construct plot2 using the base plotting system

NEI <- cbind(rownames(NEI), NEI)
rownames(NEI) <- NULL
colnames(NEI) <- c("State.Code", "fips", "SCC", "Pollutant", "Emissions", "type", "year")