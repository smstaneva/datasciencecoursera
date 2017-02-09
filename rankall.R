rankall <- function(outcome, num = "best") {
        
        care <- read.csv(file = "ProgrammingAssignment3-data/outcome-of-care-measures.csv", colClasses = "character")
        
        switch(outcome, "heart attack" = {
                col = 11
        }, "heart failure" = {
                col = 17
        }, pneumonia = {
                col = 23
        }, stop("invalid outcome"))
        
        m <- matrix(NA,0,2)
        
        source('rankhospital.R')
        for(state in unique(care$State))
                m <-rbind(m,c(rankhospital(state,outcome,num),state))
       
        m[order(m[,2])]
        colnames(m)=c("hospital", "state")
        m <- as.data.frame(m, row.names = m[,2])
}


