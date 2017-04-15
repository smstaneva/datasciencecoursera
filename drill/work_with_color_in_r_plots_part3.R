install.packages("RColorBrewer")
library(RColorBrewer)
cols <- brewer.pal(3, "BuGn")
cols

pal <- colorRampPalette(cols)
image(volcano, col = pal(20))

x <- rnorm(10000)
y <- rnorm(10000)
smoothScatter(x, y)