libraryhead(dataMatrix)

heatmap(dataMatrix)

myedit("addPatt.R")

source("addPatt.R", local = TRUE)

mat

svd(mat)

matu %*% diag %*% t(matv)

svd(scale(mat))

prcomp(scale(mat))

svd1$v[,1]

svd1$d

head(constantMatrix)

svd2$d

svd2$v[,1:2]

dim(faceData)

a1 <- (svd1$u[,1] * svd1$d[1]) %*% t(svd1$v[,1])
myImage(a1)

a2 <- svd1$u[, 1:2] %*% diag(svd1$d[1:2]) %*% t(svd1$v[, 1:2])
myImage(a2)

myImage(svd1$u[, 1:5] %*% diag(svd1$d[1:5]) %*% t(svd1$v[, 1:5]))

myImage(svd1$u[, 1:10] %*% diag(svd1$d[1:10]) %*% t(svd1$v[, 1:10]))