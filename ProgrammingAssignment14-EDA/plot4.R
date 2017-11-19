# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

grep1 <- grep("coal", SCC$EI.Sector, ignore.case = TRUE, value = TRUE)

unique(grep1)

install.packages("dplyr")
library(dplyr)

# get columns of interest from NEI

emissions <- NEI %>%
        select(SCC, fips, Emissions, type, year)

# filter rows with Coal and coal from SCC
# get columns of interest from SCC

coal <- SCC %>%
        filter(grepl("[Cc]oal", EI.Sector))%>%
        select(SCC, EI.Sector)

x0 <- inner_join(emissions, coal, by = "SCC")

# construct plot4 using ggplot2 plotting system

library("ggplot2")

ggplot(x0, aes(factor(year), y = Emissions, color = "#BFB6B4")) +
        geom_boxplot(size = 1) +
        scale_y_log10() +
        ggtitle("Emissions from Coal Combustion - Related Sources")

# save plot to a png file

dev.copy(png, file = "plot4.png")
dev.off()