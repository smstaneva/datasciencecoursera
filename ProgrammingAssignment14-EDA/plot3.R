# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

x0 <- subset(NEI, fips == "24510")

# construct plot3 using ggplot2 plotting system

library("ggplot2")

ggplot(x0, aes(factor(year), y = Emissions, color = type)) +
        geom_boxplot(size = 1) +
        scale_y_log10()+
        scale_color_manual(values=c("#800020", "#4BC6DF", "#BFB6B4", "#020A40")) +
        facet_wrap( ~ type) +
        ggtitle("Emissions from PM2.5 in Baltimore City, MD by Type")
     

# save plot to a png file

dev.copy(png, file = "plot3.png")
dev.off()