str(file)

con <- gzfile("words.gz")
x <- readLines(con, 10)
x

con <- url("https://www.jhsph.edu", "r")
x <- readLines(con)
head(x)