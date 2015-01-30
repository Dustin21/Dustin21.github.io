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