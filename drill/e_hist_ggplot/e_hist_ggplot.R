df <- read.csv("e_hist.csv", header = TRUE)

head(df)

hist(df$steps, 
     col = "#800020", 
     main = "Histogram of Steps per Day", 
     xlab = "Steps per Day")

histo <- hist(df$steps)
histo

install.packages("ggplot")
library(ggplot2)

ggplot(subset(df, !is.na(steps)), aes(steps)) + 
        geom_histogram(fill = "#800020",
                       color = "#000000", 
                       breaks = seq(0, 100, by = 20)) +
        labs(title = "Histogram of Steps per Day", x = "Steps per Day", y = "Frequency") + 
        theme(plot.title = element_text(hjust = 0.5))






 

