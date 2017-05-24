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

