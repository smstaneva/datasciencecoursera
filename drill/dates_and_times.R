x <- as.Date("1970-01-01")
x

unclass(x)

unclass(as.Date("1970-01-02"))

x<-Sys.time()
x

p <- as.POSIXlt(x)
names(unclass(p))

p$sec

p <- as.POSIXlt(x)
p$sec

datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x

class(x)

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
x-y

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
x <- as.POSIXlt(x)
x-y

x <- as.Date("2012-03-01") 
y <- as.Date("2012-02-08")
x-y

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT")
y-x
