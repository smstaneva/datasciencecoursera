install.packages("RMySQL")
library("RMySQL")
ucscDb <- dbConnect(MySQL(), user = "genome", host = "genome-mysql.cse.ucsc.edu")
result <- dbGetQuery(ucscDb, "show databases;")
dbDisconnect(ucscDb)

result

setwd("C:/Users/The User/Desktop/datasciencecoursera/drill/my_project")
reviews <- read.csv("data/reviews.csv")
solutions <- read.csv("data/solutions.csv")
mergedData2 <- merge(reviews, solutions, by.x = "solution_id", by.y = "id", all = TRUE)
head(mergedData2[, 1:6], 3)

reviews[1, 1:6]