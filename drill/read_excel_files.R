if(!file.exists("data")){
        dir.create("data")
}
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/camera.xlsx", method = "auto")

install.packages("xlsx")
library(xlsx)
cameraData <- read.xlsx("./data/camera.xlsx", sheetIndex = 1, header = TRUE)
head(cameraData)
