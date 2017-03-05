#Set working directory

setwd("C:/Users/The User/Desktop/datasciencecoursera")
if(!file.exists("./data")){dir.create("./data")}
install.packages("RCurl")
library(RCurl)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/dataset.zip", method = "auto")
unzip(zipfile="./data/dataset.zip",exdir="./data")
setwd("C:/Users/The User/Desktop/datasciencecoursera/data/UCI HAR Dataset")