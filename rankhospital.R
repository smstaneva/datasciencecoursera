rankhospital <- function(state, outcome, num = "best") {
        
        care <- read.csv(file = "ProgrammingAssignment3-data/outcome-of-care-measures.csv", colClasses = "character")
        
                if (!state %in% unique(care[, 7])) {
                        stop("invalid state")
                }
                switch(outcome, "heart attack" = {
                        col = 11
                }, "heart failure" = {
                        col = 17
                }, pneumonia = {
                        col = 23
                }, stop("invalid outcome"))
        
        
        care[, col] <- as.numeric(care[, col])
        df <- care[care$State == state, c(2, col)]
        df <- na.omit(df)
        
                switch(num, best = {
                        num = 1
                }, worst = {
                        num = nrow(df)
                })
                if (num > nrow(df)) {
                        return(NA)
                }
        
        rank <- order(df[, 2], df[, 1])
        df[rank, ][num, 1]
}


