sample(color(), 10)

pal <- colorRamp(c("red", "blue"))
pal(0)

pal(1)

pal(seq(0, 1, len = 6))

p1 <- colorRampPalette(c("red", "blue"))
p1(2)

p1(6)

0xcc

p2 <- colorRampPalette(c("red", "yellow"))
p2(2)

p2(10)

showMe(p1(20))

showMe(p2(20))

showMe(p2(2))

p1

p3 <- colorRampPalette(c("blue", "green"), alpha = .5)
p3(5)

plot(x, y, pch = 19, col = rgb(0, .5, .5))

plot(x, y, pch = 19, col = rgb(0, .5, .5, .3))

cols <- brewer.pal(3, "BuGn")
showMe(cols)

pal <- colorRampPalette(cols)
showMe(pal(20))

image(volcano, col = pal(20))

image(volcano, col = p1(20))