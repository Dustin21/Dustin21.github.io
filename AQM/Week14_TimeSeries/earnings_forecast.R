# Load dependencies
library(tseries)
library(zoo)

# retrieve earnings data
earnings <- read.csv("earnings.csv", header = T)

# create time series object
earn.ts <- ts(earnings, start = c(2000,1), frequency = 12)[,2]
time.ts <- ts(earnings, start = c(2000,1), frequency = 12)[,1]

# plot out ts object and examine
plot(earn.ts, xlab = 'year', ylab = 'Monthly Earnings', main = 'Company Monthly Earnings')

# Notable features include:
# Multiplicative seasonality and trend ==> non-stationarity
# how to remedy this?

# separate training and test set (test is 2007 onward). I separate the dates as well
train.dat <- window(earn.ts, start = c(2000,1), end = c(2006,12), frequency = 12)
train.date <- window(time.ts, start = c(2000,1), end = c(2006,12), frequency = 12)
test.dat <- window(earn.ts, start = c(2007,1), frequency = 12)
test.date <- window(time.ts, start = c(2007,1), frequency = 12)

# remedy for multiplicative effect
# perform log transform (why?)
train.log <- log(train.dat)
test.log <- log(test.dat)

# moving average decomposition
train.mov <- decompose(train.log, type = 'additive');
plot(train.mov)

# retrieve decomposed ts as separate ts objects
trend.mov <- train.mov$trend
seas.mov <- train.mov$seasonal
trend.reg <- lm(trend.mov ~ train.date)

# time points for training and test set (the indep. variable)
t.train <- 1:length(train.dat)
t.test <- (tail(t.train,1)+1):(tail(t.train,1)+12*2) 
# values for preicting the test set: at each time
# point it is just 1 (for intercept) and the value of
# the time point.
covariates.test <- cbind(rep(1,12*2),t.test) 

# To predict using the trend from moving average smoothing, 
# we first fit a linear regression model using the trend 
# against t.train:
fit.ma <- lm(trend.mov ~ t.train)
summary(fit.ma)

# prediction for the trend
m.pred.ma <- covariates.test %*% fit.ma$coef
# adding the seasonal component
y.pred.ma <- ts(m.pred.ma + seas.mov[1:12], start=c(2007,1), frequency=12)
# convert back to the original scale (os) by taking exponential
# (remember, we performed a log transform, which we must undo)
y.pred.ma.os <- exp(y.pred.ma)

# Plot the prediction of the training set
plot(test.dat, type="b", pch=20, ylab="Earnings",
		 main="Moving average smoothing")
lines(y.pred.ma.os, type="b", col=2, pch=18)
legend(2007, 22, legend=c("observed", "predicted"),
			 lty=c("solid", "solid"), pch=c(20, 18),
			 col=c("black", "red"), bty="n")

# and here is our mean square error (why do we use MSE?)
mspe.ma <- round(mean((test.dat-y.pred.ma.os)^2),3)
