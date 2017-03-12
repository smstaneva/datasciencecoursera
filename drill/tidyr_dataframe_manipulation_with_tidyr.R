install.packages("tidyr")
install.packages("dplyr")
library("tidyr")
library("dplyr")
gapminder <- read.csv("./data/gapminder-FiveYearData.csv")
str(gapminder)

download.file('https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_wide.csv', 'data/gapminder_wide.csv')
gap_wide <- read.csv("data/gapminder_wide.csv", stringsAsFactors = FALSE)
str(gap_wide)

gap_long <- gap_wide %>%
        gather(obstype_year, obs_values, starts_with('pop'),
               starts_with('lifeExp'), starts_with('gdpPercap'))
str(gap_long)

gap_long <- gap_wide %>% gather(obstype_year,obs_values,-continent,-country)
str(gap_long)

gap_normal <- gap_long %>% spread(obs_type,obs_values)
dim(gap_normal)

dim(gapminder)

names(gap_normal)

names(gapminder)

gap_normal <- gap_normal[,names(gapminder)]
all.equal(gap_normal,gapminder)

gap_temp <- gap_long %>% unite(var_ID,continent,country,sep="_")
str(gap_temp)

gap_temp <- gap_long %>%
        unite(ID_var,continent,country,sep="_") %>%
        unite(var_names,obs_type,year,sep="_")
str(gap_temp)

gap_wide_new <- gap_long %>%
        unite(ID_var,continent,country,sep="_") %>%
        unite(var_names,obs_type,year,sep="_") %>%
        spread(var_names,obs_values)
str(gap_wide_new)

gap_wide_betterID <- separate(gap_wide_new,ID_var,c("continent","country"),sep="_")
gap_wide_betterID <- gap_long %>%
        unite(ID_var, continent,country,sep="_") %>%
        unite(var_names, obs_type,year,sep="_") %>%
        spread(var_names, obs_values) %>%
        separate(ID_var, c("continent","country"),sep="_")
str(gap_wide_betterID)

all.equal(gap_wide, gap_wide_betterID)