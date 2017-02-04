x <- rpois(1, lambda=8)

if (x >= 10) {
        print("x is greater than or equal to 10")
}

x


set.seed(10)
x <- rpois(1, lambda=8)

if (x >= 10) {
        print("x is greater than or equal to 10")
} else if (x > 5) {
        print("x is greater than 5")
} else {
        print("x is less than 5")
}


x <- 4 == 3
x


for(i in 1:10){
        print(i)
}


for(i in 1:5){
        for(j in c('a', 'b', 'c', 'd', 'e')){
                print(paste(i,j))
        }
}


output_vector <- c()
for(i in 1:5){
        for(j in c('a', 'b', 'c', 'd', 'e')){
                temp_output <- paste(i, j)
                output_vector <- c(output_vector, temp_output)
        }
}
output_vector


output_matrix <- matrix(nrow=5, ncol=5)
j_vector <- c('a', 'b', 'c', 'd', 'e')
for(i in 1:5){
        for(j in 1:5){
                temp_j_value <- j_vector[j]
                temp_output <- paste(i, temp_j_value)
                output_matrix[i, j] <- temp_output
        }
}
output_vector2 <- as.vector(output_matrix)
output_vector2


z <- 1
while(z > 0.1){
        z <- runif(1)
        print(z)
}


all(output_vector == output_vector2)


all(output_vector %in% output_vector2)


gapminder <- read.csv("data/gapminder-FiveYearData.csv")
unique(gapminder$continent)


for( iContinent in unique(gapminder$continent) ){
        tmp <- mean(subset(gapminder, continent==iContinent)$lifeExp)
        cat("Average Life Expectancy in", iContinent, "is", tmp, "\n")
        rm(tmp)
}


thresholdValue <- 50

for( iContinent in unique(gapminder$continent) ){
        tmp <- mean(subset(gapminder, continent==iContinent)$lifeExp)
        
        if(tmp < thresholdValue){
                cat("Average Life Expectancy in", iContinent, "is less than", thresholdValue, "\n")
        }
        else{
                cat("Average Life Expectancy in", iContinent, "is greater than", thresholdValue, "\n")
        } # end if else condition
        rm(tmp)
}


lowerThreshold <- 50
upperThreshold <- 70

for( iCountry in unique(gapminder$country) ){
        tmp <- mean(subset(gapminder, country==iCountry)$lifeExp)
        
        if(tmp < lowerThreshold){
                cat("Average Life Expectancy in", iCountry, "is less than", lowerThreshold, "\n")
        }
        else if(tmp > lowerThreshold && tmp < upperThreshold){
                cat("Average Life Expectancy in", iCountry, "is between", lowerThreshold, "and", upperThreshold, "\n")
        }
        else{
                cat("Average Life Expectancy in", iCountry, "is greater than", upperThreshold, "\n")
        }
        rm(tmp)
}


grep("^B", unique(gapminder$country))


grep("^B", unique(gapminder$country), value=TRUE)


candidateCountries <- grep("^B", unique(gapminder$country), value=TRUE)
for( iCountry in candidateCountries){
        tmp <- mean(subset(gapminder, country==iCountry)$lifeExp)
        
        if(tmp < thresholdValue){
                cat("Average Life Expectancy in", iCountry, "is less than", thresholdValue, "plotting life expectancy graph... \n")
                
                with(subset(gapminder, country==iCountry),
                     plot(year,lifeExp,
                          type="o",
                          main = paste("Life Expectancy in", iCountry, "over time"),
                          ylab = "Life Expectancy",
                          xlab = "Year"
                     ) # end plot
                ) # end with
        } # end for loop
        rm(tmp)
}
