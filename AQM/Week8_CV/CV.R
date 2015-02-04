# dependencies
library(plyr)
library(dplyr)
library(DAAG)

# read data ************************
gpro <- read.csv("gpro.txt", header = FALSE, col.names = c("x1", "x2", "x3", "x4", "y"))

# separate train and test *********************
train <- gpro[1:4000,]
test <- gpro[4001:14000,]

# Randomly sample number of train and test *********************
# Use sample.int
train_sample <- train[sample.int(dim(train)[1], 200),]
test_sample <- test[sample.int(dim(test)[1], 1000),]
# Use sample_n from dplyr package
x.train <- sample_n(train, 100)
x.test <- sample_n(test, 1000)

# Run regression on train  *********************
mod <- lm(y ~ ., data = x.train)

# Cross-validation loop
# Variations include hold-out, LOOCV, k-fold, bootstrap
n <- dim(x.train)[1]
RMSE <- rep(0,n)

for(i in 1:n) {
	point <- x.train[i,]
	training <- x.train[-i,]
	model <- lm(y ~ ., data = training)
	pred <- predict(model, newdata = point)
	RMSE[i] <- mean(pred - point$y)^2
}
mean(RMSE)

# CV black-box
cv <- cv.lm(x.train, mod, n, plotit = FALSE)
RMSE <- attr(cv,"ms")
print(RMSE)

# Identify optimal fold
n = dim(x.train)[1]
crossVal <- rep(0,n-1)
for(i in 2:n) {
	crossVal[i-1] <- attr(cv.lm(x.train, mod, i, plotit = FALSE), "ms")
}
plot(crossVal, col = "red", type = "l", lwd = 2)

# Test on polynomial fit
mod2 <- lm(y ~ x1 + x2 + x3 + poly(x4,2), data = x.train)
plot(residuals(mod2) ~ x.train$x4)

# CV black-box
cv <- cv.lm(x.train, mod2, n, plotit = FALSE)
RMSE <- attr(cv,"ms")
print(RMSE)

# Identify optimal fold
n = dim(x.train)[1]
crossVal <- rep(0,n-1)
for(i in 2:n) {
	crossVal[i-1] <- attr(cv.lm(x.train, mod2, i, plotit = FALSE), "ms")
}
plot(crossVal, col = "red", type = "l", lwd = 2)

