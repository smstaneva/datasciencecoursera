rankhospital <- function(state, outcome, num = "best"){
        care <- read.csv(file = "ProgrammingAssignment3-data/outcome-of-care-measures.csv", colClasses = "character")
        
        if (!state %in% unique(care[, 7])) {
                stop("invalid state")
        }
        switch(outcome, "heart attack" = {
                col = 11
        }, 
        "heart failure" = {
                col = 19
        },
        pneumonia = {
                col = 23
        }, stop("invalid outcome"))
        
        
        
}