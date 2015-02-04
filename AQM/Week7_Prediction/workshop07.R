library(robustbase)
library(MASS)
library(plyr)
library(dplyr)
library(lmtest)
library(car)
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

summary(mod)
anova(mod)

# diagnostics  *********************

# Assumption 1 - Expectation is 0
# If violated, we assume x_j on E(Y)
# when it is not
plot(residuals(mod) ~ x.train$x1)
plot(residuals(mod) ~ x.train$x2)
plot(residuals(mod) ~ x.train$x3)
plot(residuals(mod) ~ x.train$x4)

# or

plot(cbind(residuals(mod), x.train[,1:4]), lower.panel = NULL)

# Component residual plots (partial residual plots)
# Use 'car' package
crPlots(mod)



# Assumption 2 - constant variance
# Common issue is dependence of residuals on E(Y)
plot(fitted(mod), residuals(mod), xlab="Fitted", ylab="Residuals")
abline(h= c(-2,0,2), lwd = c(2,2,2), col=c("red", "red", "red"), lty = c(2,1,2))

plot(fitted(mod), abs(residuals(mod)), xlab="Fitted", main ="|Residuals|")

summary(lm(abs(residuals(mod)) ~ fitted(mod)))

# bptest(p) does the Breuch Pagan test to formally 
# check presence of heteroscedasticity. Low p-value
# indicates higher prob of heteroscedasticity.
bptest(mod)

# Assumption 3 - Normality of errors
# qqplot
qqnorm(residuals(mod), ylab="Residuals")
qqline(residuals(mod), col = "red", lwd = 2)
# histogram
hist(residuals(mod))

# Assumption 4 - Uncorrelated Errors
# Typical in time-series data. If errors
# are correlated, more advanced methods will
# come into play. Correlation may help us!
plot(residuals(mod))
acf(residuals(mod))
pacf(residuals(mod))


# prediction *********************
pred <- predict(mod, newdata = x.test)
obs <- x.test$y

plot(obs ~ pred)
abline(c(0,1), col = "red", lwd = 2)

# prediction error
RMSE <- sqrt(mean(pred - obs)^2)
AE <- sum(abs(pred - obs))


# Model 2 ****************
mod2 <- lm(y ~ x1 + x2 + x3 + poly(x4,2), data = x.train)
plot(residuals(mod2) ~ x.train$x4)

pred <- predict(mod2, newdata = x.test)
obs <- x.test$y

plot(obs ~ pred)
abline(c(0,1), col = "red", lwd = 2)

# prediction error
RMSE <- sqrt(mean(pred - obs)^2)
AE <- sum(abs(pred - obs))

# Model 3 - MM-type regression estimator ****************
mod3 <- lmrob(y ~ x1 + x2 + x3 + poly(x4,2), data = x.train)
plot(residuals(mod3) ~ x.train$x4)

pred <- predict(mod3, newdata = x.test)
obs <- x.test$y

plot(obs ~ pred)
abline(c(0,1), col = "red", lwd = 2)

# prediction error
RMSE <- sqrt(mean(pred - obs)^2)
AE <- sum(abs(pred - obs))

# Model 4 - rlm ****************
mod4 <- rlm(y ~ x1 + x2 + x3 + poly(x4,2), data = x.train)
plot(residuals(mod4) ~ x.train$x4)

pred <- predict(mod4, newdata = x.test)
obs <- x.test$y

plot(obs ~ pred)
abline(c(0,1), col = "red", lwd = 2)

# prediction error
RMSE <- sqrt(mean(pred - obs)^2)
AE <- sum(abs(pred - obs))



# Simulating residual plots

# example plots: nonconstant variance
par(mfrow=c(2,2))

plot(1:50,rnorm(50))
# constant variance
plot(1:50,(1:50)*rnorm(50))
# strong heterogeneity
plot(1:50,sqrt((1:50))*rnorm(50))
# mild heterogeneity
plot(1:50,cos((1:50)*pi/25)+rnorm(50))
# non-linearity

# example plots: normality of errors
par(mfrow=c(2,2))
x = rnorm(50); qqnorm(x); qqline(x)
# standard normal distribution
x = rlnorm(50); qqnorm(x); qqline(x)
# lognormal distribution - skew to right
x = rt(50,1); qqnorm(x); qqline(x)
# Student t-distribution with one df (heavy tails)
x = runif(50); qqnorm(x); qqline(x)
# uniform (0,1) distribution (short tails)
