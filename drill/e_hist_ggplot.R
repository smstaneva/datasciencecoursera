df <- read.csv("histogram.csv", header = TRUE)

head(df)

hist(df$steps, 
     col = "#800020", 
     main = "Histogram of Steps per Day", 
     xlab = "Steps per Day")

histo <- hist(df$steps)
histo

install.packages("ggplot")
library(ggplot2)
           
     
ggplot(df, aes(steps)) + 
        geom_histogram(breaks = pretty(range(df$steps), n = nclass.Sturges(df$steps),min.n = 1), 
                       fill = "#800020", 
                       color = "#000000") +
        labs(title = "Histogram of Steps per Day", x = "Steps per Day", y = "Frequency") + 
        theme(plot.title = element_text(hjust = 0.5))


 

