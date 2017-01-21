list.files("diet_data")

andy <- read.csv("diet_data/Andy.csv")
head(andy)

length(andy$Day)

dim(andy)

str(andy)

summary(andy)

names(andy)

andy[1, "Weight"]

andy[30, "Weight"]

andy[which(andy$Day == 30), "Weight"]

andy[which(andy[,"Day"] == 30), "Weight"]

subset(andy$Weight, andy$Day==30)

andy_start <- andy[1, "Weight"]
andy_end <- andy[30, "Weight"]
andy_loss <- andy_start - andy_end
andy_loss

files <- list.files("diet_data")
files

files[1]

files[2]

files[3:5]

head(read.csv(files[3]))

files_full <- list.files("diet_data", full.names=TRUE)
files_full

head(read.csv(files_full[3]))

andy_david <- rbind(andy, read.csv(files_full[2]))
head(andy_david)

tail(andy_david)

day_25 <- andy_david[which(andy_david$Day == 25), ]
day_25

for (i in 1:5) {print(i)}

for (i in 1:5) {
        dat <- rbind(dat, read.csv(files_full[i]))
        
        dat <- data.frame()
        for (i in 1:5) {
                dat <- rbind(dat, read.csv(files_full[i]))
        }
        str(dat)
        
        for (i in 1:5) {
                dat2 <- data.frame()
                dat2 <- rbind(dat2, read.csv(files_full[i]))
        }
        str(dat2)
        head(dat2)
}

median(dat$Weight)

median(dat$Weight, na.rm=TRUE)

dat_30 <- dat[which(dat[, "Day"] == 30),]
dat_30

median(dat_30$Weight)

weightmedian <- function(directory, day)  {
        files_list <- list.files(directory, full.names=TRUE)   
        dat <- data.frame()                     
        for (i in 1:5) {                                
                 
                dat <- rbind(dat, read.csv(files_list[i]))
        }
        dat_subset <- dat[which(dat[, "Day"] == day),]  
        median(dat_subset[, "Weight"], na.rm=TRUE)       
        
}
weightmedian(directory = "diet_data", day = 20)

weightmedian("diet_data", 4)

weightmedian("diet_data", 17)

for (i in seq_along(files_full)) {
        tmp[[i]] <- read.csv(files_full[[i]])
}

str(lapply(files_full, read.csv))
str(tmp)

str(tmp[[1]])

head(tmp[[1]][,"Day"])

output <- do.call(rbind, tmp)
str(output)