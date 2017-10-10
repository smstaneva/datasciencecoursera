# read the data from the files

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# get the columns with Coal and coal

colnames(SCC)

grep('coal', SCC$Data.Category, ignore.case = TRUE)
grep('coal', SCC$Short.Name, ignore.case = TRUE)
grep('coal', SCC$EI.Sector, ignore.case = TRUE)
grep('coal', SCC$Option.Group, ignore.case = TRUE)
grep('coal', SCC$Option.Set, ignore.case = TRUE)
grep('coal', SCC$SCC.Level.One, ignore.case = TRUE)
grep('coal', SCC$SCC.Level.Two, ignore.case = TRUE)
grep('coal', SCC$SCC.Level.Three, ignore.case = TRUE)
grep('coal', SCC$SCC.Level.Four, ignore.case = TRUE)
grep('coal', SCC$Map.To, ignore.case = TRUE)
grep('coal', SCC$Last.Inventory.Year, ignore.case = TRUE)
grep('coal', SCC$Created_Date, ignore.case = TRUE)
grep('coal', SCC$Revised_Date, ignore.case = TRUE)
grep('coal', SCC$Usage.Notes, ignore.case = TRUE)

install.packages("dplyr")
library(dplyr)

emissions <- NEI %>%
  select(SCC, fips, Emissions, type, year)

coal <- SCC %>%
  filter(grepl("[Cc]oal", Short.Name) | 
         grepl("[Cc]oal", EI.Sector) | 
         grepl("[Cc]oal", SCC.Level.Three) | 
         grepl("[Cc]oal", SCC.Level.Four))%>%
  select(SCC, Short.Name, EI.Sector, SCC.Level.Three, SCC.Level.Four)

x0 <- inner_join(emissions, coal, by = "SCC")

pm1 <- subset(x0, x0$year == 1999)
pm2 <- subset(x0, x0$year == 2002)
pm3 <- subset(x0, x0$year == 2005)
pm4 <- subset(x0, x0$year == 2008)

x1 <- pm1$Emissions
x2 <- pm2$Emissions
x3 <- pm3$Emissions
x4 <- pm4$Emissions

# construct plot4 using base plotting system
boxplot(x1, x2, x3, x4)

boxplot(log10(x1), log10(x2), log10(x3), log10(x4), 
        main = "Emissions from Coal Combustion - Related Sources across USA",
        names = c("1999", "2002", "2005", "2008"),
        col = "#bfb6b4")

# save plot to a png file

dev.copy(png, file = "plot4.png")
dev.off()