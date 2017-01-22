corr <- function(directory, threshold = 0, id = 1:332) {
        files_list <- list.files(directory, full.names = TRUE)
        dat <- frame()
        for(i in id) {
                tmp <- read.csv(files_list[i])
                nobs <- sum(complete.cases(tmp))
                
                if(nobs > threshold) {
                        complete <- tmp[!is.na(tmp$sulfate) & !is.na(tmp$nitrate),]
                        dat[i] <- cor(complete$sulfate, complete$nitrate)
                        }
                }
        complete_dat<- na.omit(dat)
}

