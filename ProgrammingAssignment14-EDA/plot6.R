# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

x0 <- subset(NEI, fips == "24510" | fips == "06037")

install.packages("dplyr")
library(dplyr)

# get columns of interest from NEI

emissions <- x0 %>%
        select(SCC, fips, Emissions, type, year)


# filter rows with Vehicle and vehicle from SCC
# get columns of interest from SCC

vehicle <- SCC %>%
        filter(grepl("[Vv]ehicle", EI.Sector))%>%
        select(SCC, EI.Sector)

x1 <- inner_join(emissions, vehicle, by = "SCC")


# construct plot6 using ggplot2 plotting system

library("ggplot2")

ggplot(x1, aes(factor(year), y = Emissions, color = fips)) +
        geom_boxplot(size = 1) +
        scale_y_log10() +
        scale_color_manual(values=c("#800020", "#4BC6DF")) +
        facet_wrap( ~ fips) +
        ggtitle("Emissions from Motor Vehicle Sources in BC vs LA")

# save plot to a png file

dev.copy(png, file = "plot6.png")
dev.off()