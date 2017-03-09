gapminder <- read.csv("./data/gapminder-FiveYearData.csv")
mean(gapminder[gapminder$continent == "Africa", "gdpPercap"])

mean(gapminder[gapminder$continent == "Americas", "gdpPercap"])

mean(gapminder[gapminder$continent == "Asia", "gdpPercap"])

install.packages('dplyr')
library(dplyr)
str(gapminder)

str(gapminder %>% group_by(continent))

starts.with <- substr(gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]
install.packages("ggplot2")
library(ggplot2)
ggplot(data = az.countries, aes(x = year, y = lifeExp, color = continent)) +
        geom_line() + facet_wrap( ~ country)

gapminder %>%
        mutate(startsWith = substr(country, start = 1, stop = 1)) %>% 
        filter(startsWith %in% c("A", "Z")) %>%
        ggplot(aes(x = year, y = lifeExp, color = continent)) + 
        geom_line() + 
        facet_wrap( ~ country)

gapminder %>%
        filter(substr(country, start = 1, stop = 1) %in% c("A", "Z")) %>%
        ggplot(aes(x = year, y = lifeExp, color = continent)) + 
        geom_line() + 
        facet_wrap( ~ country)

lifeExp_2countries_bycontinents <- gapminder %>%
        filter(year==2002) %>%
        group_by(continent) %>%
        sample_n(2) %>%
        summarize(mean_lifeExp=mean(lifeExp)) %>%
        arrange(desc(mean_lifeExp))

