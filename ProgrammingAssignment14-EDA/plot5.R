# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

grep1 <- grep("motor", SCC$Data.Category, ignore.case = TRUE, value = TRUE)
grep1
grep2 <- grep("motor", SCC$Short.Name, ignore.case = TRUE, value = TRUE)
grep2
grep3 <- grep("motor", SCC$EI.Sector, ignore.case = TRUE, value = TRUE)
grep3
grep4 <- grep("motor", SCC$Option.Group, ignore.case = TRUE, value = TRUE)
grep4
grep5 <- grep("motor", SCC$Option.Set, ignore.case = TRUE, value = TRUE)
grep5
grep6 <- grep("motor", SCC$SCC.Level.One, ignore.case = TRUE, value = TRUE)
grep6
grep7 <- grep("motor", SCC$SCC.Level.Two, ignore.case = TRUE, value = TRUE)
grep7
grep8 <- grep("motor", SCC$SCC.Level.Three, ignore.case = TRUE, value = TRUE)
grep8
grep9 <- grep("motor", SCC$SCC.Level.Four, ignore.case = TRUE, value = TRUE)
grep9
grep10 <- grep("motor", SCC$Map.To, ignore.case = TRUE, value = TRUE)
grep10
grep11 <- grep("motor", SCC$Last.Inventory.Year, ignore.case = TRUE, value = TRUE)
grep11
grep12 <- grep("motor", SCC$Created_Date, ignore.case = TRUE, value = TRUE)
grep12
grep13 <- grep("motor", SCC$Revised_Date, ignore.case = TRUE, value = TRUE)
grep13
grep14 <- grep("motor", SCC$Usage.Notes, ignore.case = TRUE, value = TRUE)
grep14

unique(grep2)
unique(grep8)
unique(grep9)

grep15 <- grep("vehicle", SCC$Data.Category, ignore.case = TRUE, value = TRUE)
grep15
grep16 <- grep("vehicle", SCC$Short.Name, ignore.case = TRUE, value = TRUE)
grep16
grep17 <- grep("vehicle", SCC$EI.Sector, ignore.case = TRUE, value = TRUE)
grep17
grep18 <- grep("vehicle", SCC$Option.Group, ignore.case = TRUE, value = TRUE)
grep18
grep19 <- grep("vehicle", SCC$Option.Set, ignore.case = TRUE, value = TRUE)
grep19
grep20 <- grep("vehicle", SCC$SCC.Level.One, ignore.case = TRUE, value = TRUE)
grep20
grep21 <- grep("vehicle", SCC$SCC.Level.Two, ignore.case = TRUE, value = TRUE)
grep21
grep22 <- grep("vehicle", SCC$SCC.Level.Three, ignore.case = TRUE, value = TRUE)
grep22
grep23 <- grep("vehicle", SCC$SCC.Level.Four, ignore.case = TRUE, value = TRUE)
grep23
grep24 <- grep("vehicle", SCC$Map.To, ignore.case = TRUE, value = TRUE)
grep24
grep25 <- grep("vehicle", SCC$Last.Inventory.Year, ignore.case = TRUE, value = TRUE)
grep25
grep26 <- grep("vehicle", SCC$Created_Date, ignore.case = TRUE, value = TRUE)
grep26
grep27 <- grep("vehicle", SCC$Revised_Date, ignore.case = TRUE, value = TRUE)
grep27
grep28 <- grep("vehicle", SCC$Usage.Notes, ignore.case = TRUE, value = TRUE)
grep28

unique(grep16)
unique(grep17)
unique(grep21)
unique(grep22)
unique(grep23)

x0 <- subset(NEI, fips == "24510")

install.packages("dplyr")
library(dplyr)

# get columns of interest from NEI

emissions <- x0 %>%
  select(SCC, fips, Emissions, type, year)

# filter rows with Vehicle and vehicle from SCC
# get columns of interest from SCC

vehicle <- SCC %>%
  filter(grepl("[Vv]ehicle", EI.Sector)) %>%
  select(SCC, EI.Sector)

x1 <- inner_join(emissions, vehicle, by = "SCC")

install.packages("ggplot2")
library(ggplot2)

ggplot(x1, aes(factor(year), y = Emissions, color = year)) +
        geom_boxplot(size = 1) +
        scale_y_log10() +
        ggtitle("Emissions from Motor Vehicle Sources in BC from 1999-2008")

# save plot to a png file

dev.copy(png, file = "plot5.png")
dev.off()