# read in the dataset and/or process the data

activity <- read.csv("./data/activity.csv")
head(activity)

# convert the Date variable to Date class

class(activity$date)
Date <- as.Date(activity$date)
class(Date)

# construct a histogram of the total number of steps taken each day

hist(activity$steps, 
     col = "#800020", 
     main = "Total Number of Steps per Day", 
     xlab = "Steps per Day", 
     ylab = "Frequency")


# calculate and report the mean and median number of steps taken each day

x0 <- activity$steps
summary(x0)
mean(is.na(x0))

