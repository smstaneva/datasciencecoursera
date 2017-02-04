library("ggplot2")
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
        geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp))

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
        geom_point()

ggplot(data = gapminder, aes(x = year, y = lifeExp)) + geom_point()

ggplot(data = gapminder, aes(x = year, y = lifeExp, color=continent)) +
        geom_point()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) +
        geom_line()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) +
        geom_line() + geom_point()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) +
        geom_line(aes(color=continent)) + geom_point()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) +
        geom_point() + geom_line(aes(color=continent))

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) +
        geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
        geom_point(alpha = 0.5) + scale_x_log10()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
        geom_point() + scale_x_log10() + geom_smooth(method="lm")

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
        geom_point() + scale_x_log10() + geom_smooth(method="lm", size=1.5)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
        geom_point(size=3, color="orange") + scale_x_log10() +
        geom_smooth(method="lm", size=1.5)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) +
        geom_point(size=3, pch=17) + scale_x_log10() +
        geom_smooth(method="lm", size=1.5)

starts.with <- substr(gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]
ggplot(data = az.countries, aes(x = year, y = lifeExp, color=continent)) +
        geom_line() + facet_wrap( ~ country)

ggplot(data = az.countries, aes(x = year, y = lifeExp, color=continent)) +
        geom_line() + facet_wrap( ~ country) +
        xlab("Year") + ylab("Life expectancy") + ggtitle("Figure 1") +
        scale_colour_discrete(name="Continent") +
        theme(axis.text.x=element_blank(), axis.ticks.x=element_blank())

ggplot(data = gapminder, aes(x = gdpPercap, fill=continent)) +
        geom_density(alpha=0.6) + facet_wrap( ~ year) + scale_x_log10()