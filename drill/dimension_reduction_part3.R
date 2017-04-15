set.seed(12345)
par(mar = rep(0.2, 4))
dataMatrix <- matrix(rnorm(400), nrow = 40)
image(1:10, 1:40, t(dataMatrix)[, nrow(dataMatrix):1])
set.seed(678910)
for(i in 1:40){
        coinFlip1 <- rbinom(1, size = 1, prob = 0.5)
        coinFlip2 <- rbinom(1, size = 1, prob = 0.5)
        if(coinFlip1){
                dataMatrix[i, ] <- dataMatrix[i, ] + rep(c(0, 5), each = 5)
        }
        if(coinFlip2){
                dataMatrix[i, ] <- dataMatrix[i, ] + rep(c(0, 5), 5)
        }
}
hh <- hclust(dist(dataMatrix))
dataMatrixOrdered <- dataMatrix[hh$order, ]
svd2 <- svd(scale(dataMatrixOrdered))
par(mfrow = c(1, 3))
image(t(dataMatrixOrdered)[, nrow(dataMatrixOrdered):1])
dataMatrix2 <- dataMatrixOrdered
dataMatrix2[sample(1:100, size = 40, replace = FALSE)] <- NA
svd1 <- svd(scale(dataMatrix2))


source("https://bioconductor.org/biocLite.R")
biocLite("impute")
library(impute)
dataMatrix2 <- dataMatrixOrdered
dataMatrix2[sample(1:100, size = 40, replace = FALSE)] <- NA
dataMatrix2 <- impute.knn(dataMatrix2)$data
svd1 <- svd(scale(dataMatrixOrdered)); svd2 <- svd(scale(dataMatrix2))
par(mfrow = c(1, 2)); plot(svd1$v[, 1], pch = 19); plot(svd2$v[, 1], pch = 19)

load("data/face.rda")
image(t(faceData)[, nrow(faceData):1])

svd1 <- svd(scale(faceData))
plot(svd1$d^2/sum(svd1$d^2), 
     pch = 19, 
     xlab = "Singular vector", 
     ylab = "Variance explained")

svd1 <- svd(scale(faceData))
approx1 <- svd1$u[, 1]%*%t(svd1$v[, 1])*svd1$d[1]
approx5 <- svd1$u[, 1:5]%*%diag(svd1$d[1:5])%*%t(svd1$v[, 1:5])
approx10 <- svd1$u[, 1:10]%*%diag(svd1$d[1:10])%*%t(svd1$v[, 1:10])
par(mfrow = c(1, 4))
image(t(approx1)[, nrow(approx1):1], main = "(a)")

image(t(approx5)[, nrow(approx5):1], main = "(b)")

image(t(approx10)[, nrow(approx10):1], main = "(c)")

image(t(faceData)[, nrow(faceData):1], main = "(d)")

