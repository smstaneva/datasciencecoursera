library(datasets)
with(faithful, plot(eruptions, waiting))

title(main = "Old Faithful Geyser data")

pdf(file = "myplot.pdf")
with(faithful, plot(eruptions, waiting))
title(main = "Old Faithful Geyser data")
dev.off()