complete <- function(directory, id = 1:332) {
        files_list <- list.files(directory, full.names = TRUE)
        dat <- data.frame(id = id, nobs = 0)
        
        for (i in id) { 
                tmp <- read.csv(files_list[i]) 
                dat[i, "nobs"] <- sum(complete.cases(tmp)) 
        }
        dat
}
                