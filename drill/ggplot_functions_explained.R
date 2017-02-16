fahr_to_kelvin <- function(temp) {
        kelvin <- ((temp - 32) * (5 / 9)) + 273.15
        return(kelvin)
}
fahr_to_kelvin(32)


fahr_to_kelvin(212)


gapminder <- read.csv(file = "./data/gapminder-FiveYearData.csv")
calcGDP <- function(dat) {
        gdp <- dat$pop * dat$gdpPercap
        return(gdp)
}
calcGDP(head(gapminder))


calcGDP <- function(dat, year=NULL, country=NULL) {
        if(!is.null(year)) {
                dat <- dat[dat$year %in% year, ]
        }
        if (!is.null(country)) {
                dat <- dat[dat$country %in% country,]
        }
        gdp <- dat$pop * dat$gdpPercap
        
        new <- cbind(dat, gdp=gdp)
        return(new)
}
head(calcGDP(gapminder, year=2007))


calcGDP(gapminder, country="Australia")


calcGDP(gapminder, year=2007, country="Australia")


best_practice <- c("Write", "programs", "for", "people", "not", "computers")
paste(best_practice, collapse=" ")


fence <- function(text, wrapper){
        text <- c(wrapper, text, wrapper)
        result <- paste(text, collapse = " ")
        return(result)
}
best_practice <- c("Write", "programs", "for", "people", "not", "computers")
fence(text=best_practice, wrapper="***")