Ret <- read.table("Portfolio_Return.txt")

plot(stock_ret ~ portfolio_ret, data = Ret)

mod1 <- lm(stock_ret ~ portfolio_ret, data = Ret)

resid <- mod1$resid
pred <- predict(mod1)

plot(resid ~ pred)

qqnorm(resid)
qqline(resid)

plot.ts(resid)
abline(h = 0)

#***********************************


bank <- read.table("bank.txt", header = TRUE)
mod <- lm(SALBEG ~ SEX + JOBCAT, data = bank)

res <- mod$resid
y_hat <- predict(mod)

# Assumption 1
plot(res ~ bank$SEX)
plot(res ~ bank$JOBCAT)

# Assumption 2
plot(res ~ y_hat)

# Assumption 3
qqnorm(res)
qqline(res)


