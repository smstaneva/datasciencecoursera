dist(dataFrame)

hc <- hclust(distxy)
plot(hc)

plot(as.dendrogram(hc))

abline(h = 1.5, col = "blue")

abline(h = .4, col = "red")

abline(h = .05, col = "green")

dist(dFsm)

hc

heatmap(dataMatrix, col = cm.colors(25))

heatmap(mt)

mt

plot(denmt)

distmt