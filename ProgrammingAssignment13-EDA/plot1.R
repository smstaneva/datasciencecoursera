# calculate a rough estimate of how much memory the dataset will require

# nrow = 2,075,259
# ncol = 9
# GB = ?
# 2,075,259 * 9 * 8 bytes/numeric = 149418648 bytes = 0.149418648GB
# required = 0.149418648GB * 2 = 0.298837296GB
# required < RAM

# read the data from the dates 2007-02-01 and 2007-02-02

# head -n 3 household_power_consumption.txt
# grep "Date\|1/2/2007\|2/2/2007" household_power_consumption.txt > grep.txt
# head -n 3 grep.txt

system.time(consumption <- read.table("./data/grep.txt", sep = ";", header = TRUE)) 
head(consumption)






