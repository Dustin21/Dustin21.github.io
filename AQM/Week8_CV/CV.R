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

# Identify optimal fold
n = dim(x.train)[1]
crossVal <- rep(0,n-1)
for(i in 2:n) {
	crossVal[i-1] <- attr(cv.lm(x.train, mod, i, plotit = FALSE), "ms")
}
plot(crossVal, col = "red", type = "l", lwd = 2)

