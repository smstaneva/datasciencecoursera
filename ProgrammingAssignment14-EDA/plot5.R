# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

grep('motor', SCC$Data.Category, ignore.case = TRUE)
grep('motor', SCC$Short.Name, ignore.case = TRUE)
grep('motor', SCC$EI.Sector, ignore.case = TRUE)
grep('motor', SCC$Option.Group, ignore.case = TRUE)
grep('motor', SCC$Option.Set, ignore.case = TRUE)
grep('motor', SCC$SCC.Level.One, ignore.case = TRUE)
grep('motor', SCC$SCC.Level.Two, ignore.case = TRUE)
grep('motor', SCC$SCC.Level.Three, ignore.case = TRUE)
grep('motor', SCC$SCC.Level.Four, ignore.case = TRUE)
grep('motor', SCC$Map.To, ignore.case = TRUE)
grep('motor', SCC$Last.Inventory.Year, ignore.case = TRUE)
grep('motor', SCC$Created_Date, ignore.case = TRUE)
grep('motor', SCC$Revised_Date, ignore.case = TRUE)
grep('motor', SCC$Usage.Notes, ignore.case = TRUE)

install.packages("dplyr")
library(dplyr)

# get columns of interest from NEI

emissions <- NEI %>%
  select(SCC, fips, Emissions, type, year)

# filter rows with Motor and motor from SCC
# get columns of interest from SCC

motor <- SCC %>%
  filter(grepl("[Mm]otor", Short.Name) | 
           grepl("[Mm]otor", SCC.Level.Three) | 
           grepl("[Mm]otor", SCC.Level.Four))%>%
  select(SCC, Short.Name, SCC.Level.Three, SCC.Level.Four)

x0 <- inner_join(emissions, motor, by = "SCC")

pm1 <- subset(x0, x0$year == 1999)
pm2 <- subset(x0, x0$year == 2002)
pm3 <- subset(x0, x0$year == 2005)
pm4 <- subset(x0, x0$year == 2008)

x1 <- pm1$Emissions
x2 <- pm2$Emissions
x3 <- pm3$Emissions
x4 <- pm4$Emissions


# construct plot5 using base plotting system

boxplot(x1, x2, x3, x4)

boxplot(log10(x1), log10(x2), log10(x3), log10(x4), 
        main = "Emissions from Motor Vehicle Sources in Baltimore",
        names = c("1999", "2002", "2005", "2008"),
        col = "#020a40")

# save plot to a png file

dev.copy(png, file = "plot5.png")
dev.off()