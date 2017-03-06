#Set working directory

setwd("C:/Users/The User/Desktop/datasciencecoursera")
if(!file.exists("./data")){dir.create("./data")}

install.packages("RCurl")
library(RCurl)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/dataset.zip", method = "auto")

unzip(zipfile="./data/dataset.zip",exdir="./data")
setwd("C:/Users/The User/Desktop/datasciencecoursera/data/UCI HAR Dataset")

subject_test <- read.table("./test/subject_test.txt", header = FALSE)
subject_train <- read.table("./train/subject_train.txt", header = FALSE)
Y_test <- read.table("./test/Y_test.txt", header = FALSE)
Y_train <- read.table("./train/Y_train.txt", header = FALSE)
X_test <- read.table("./test/X_test.txt", header = FALSE)
X_train <- read.table("./train/X_train.txt", header = FALSE)

str(subject_test)
str(subject_train)
str(Y_test)
str(Y_train)
str(X_test)
str(X_train)

# Merge the training and the test sets to create one data set.

subject <- rbind(subject_test, subject_train)
activity <- rbind(Y_test, Y_train)
features <- rbind(X_test, X_train)

names(subject) <- c("subject")
names(activity) <- c("activity")

features_names <- read.table("./features.txt", header = FALSE)
names(features) <- features_names$V2

dataset <- cbind(subject, activity, features)

# Extract only the measurements on mean and std for each measurement.

features_names_meanstd <- features_names$V2[grep("mean\\(\\)|std\\(\\)", features_names$V2)]
names_meanstd <- c("subject", "activity", as.character(features_names_meanstd))

dataset <- subset(dataset, select = names_meanstd)

# Use descriptive activity names to name the activities in the data set

activity_labels <-read.table("./activity_labels.txt", header = FALSE)
dataset$activity <- factor(dataset$activity);
dataset$activity <- factor(dataset$activity, labels = as.character(activity_labels$V2))