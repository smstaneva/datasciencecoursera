cats <- read.csv(file = "data/feline-data.csv")
age <- c(2,3,5,12)
cats

cats <- cbind(cats, age)

cats

age <- c(4,5,8)
cats <- cbind(cats, age)
cats

newRow <- list("tortoiseshell", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)

levels(cats$coat)

str(cats)

cats$coat <- as.character(cats$coat)
str(cats)

cats

cats[-4,]

na.omit(cats)

cats <- rbind(cats, cats)
cats

rownames(cats) <- NULL
cats

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder-FiveYearData.csv")
gapminder <- read.csv("data/gapminder-FiveYearData.csv")

str(gapminder)

typeof(gapminder$year)

typeof(gapminder$country)

str(gapminder$country)

length(gapminder)

typeof(gapminder)

nrow(gapminder)

ncol(gapminder)

dim(gapminder)

colnames(gapminder)

head(gapminder)

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder-FiveYearData.csv")
gapminder <- read.csv(file = "data/gapminder-FiveYearData.csv")