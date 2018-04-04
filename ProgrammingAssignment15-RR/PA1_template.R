# read in the dataset and/or process the data

activity <- read.csv("./data/activity.csv")
head(activity)

# convert the Date variable to Date class

class(activity$date)
Date <- as.Date(activity$date)
class(Date)

# construct a histogram of the total number of steps taken each day
     
install.packages("ggplot")

library(ggplot2)

ggplot(activity, aes(x=steps)) +
        geom_histogram(binwidth = 0.25, color = "#000000", fill = "#800020") +
        scale_x_log10() +
        labs(title = "Total Number of Steps per Day", x = "Log Steps per Day", y = "Count")

# calculate and report the mean and median number of steps taken each day

x0 <- activity$steps
summary(x0)

# Add mean line

ggplot(activity, aes(x=steps)) +
        geom_histogram(binwidth = 0.25, color = "#000000", fill = "#800020") +
        scale_x_log10() +
        labs(title = "Total Number of Steps per Day", x = "Log Steps per Day", y = "Count") + 
        geom_vline(aes(xintercept = mean(steps)), color = "blue", size = 1)


# construct a time series plot of the 5-minute interval 

steps_ts <- ts(x0, frequency = 12, start = c(10, 1))
steps_ts




