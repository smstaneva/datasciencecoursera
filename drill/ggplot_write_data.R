gapminder <- read.csv(file = "./data/gapminder-FiveYearData.csv")
library(ggplot2)
pdf("Life_Exp_vs_time.pdf", width=12, height=4)
ggplot(data=gapminder, aes(x=year, y=lifeExp, colour=country)) +
        geom_line()
dev.off()


aust_subset <- gapminder[gapminder$country == "Australia",]
write.table(aust_subset,
            file="./data/gapminder-aus.csv",
            sep=","
)
head data/gapminder-aus.csv


write.table(
        gapminder[gapminder$country == "Australia",],
        file="./data/gapminder-aus.csv",
        sep=",", quote=FALSE, row.names=FALSE
)
