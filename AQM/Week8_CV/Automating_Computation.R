# Input cash flows of specific projects
cashFlows1 <- c(-1000, rep(220,6))
cashFlows2 <- c(-1000, rep(0,5), 1550)
discountRate <- 0.05

# Discount cash flows with loop
n <- length(cashFlows1)
# empty vectors
discountCF_1 <- rep(0, n)
discountCF_2 <- rep(0, n)
for(i in 1:n) {
	# Discount CFs for both cashFlows 1 & 2
	discountCF_1[i] <- cashFlows1[i]/(1+discountRate)^(i-1)
	discountCF_2[i] <- cashFlows2[i]/(1+discountRate)^(i-1)
	# Combine CFs into a matrix 
	# rows = CF, col = project 1 and 2
	discountMat <- cbind(discountCF_1, discountCF_2)
}

# Identify NPV of each project
print(discountMat)
NPVmat <- colSums(discountMat)
names(NPVmat) <- c("NPV1", "NPV2")

# Range of discount rates
DiscountRates <- seq(0.01,0.13,0.001)
rates_n <- length(IRRrates)
# Empty matrix for each project's NPV 
# for each discount rate
DiscountMatrix <- cbind(0,0,DiscountRates)
colnames(DiscountMatrix) <- c("NPV1", "NPV2", "Rate")

# empty vectors
n <- length(cashFlows1)
discountCF_1 <- rep(0, n)
discountCF_2 <- rep(0, n)

# Evaluate NPV values at each discount rate
# and store values in rows of discount matrix
for(i in 1:rates_n) {
	for(j in 1:n){
		discountCF_1[j] <- cashFlows1[j]/(1+DiscountRates[i])^(j-1)
		discountCF_2[j] <- cashFlows2[j]/(1+DiscountRates[i])^(j-1)
	}
	DiscountMatrix[i,1] <- sum(discountCF_1)
	DiscountMatrix[i,2] <- sum(discountCF_2)
}

# Check that matrix conforms
head(DiscountMatrix)

# Plot NPV vs Discount Rate
plot(NPV1 ~ Rate, DiscountMatrix, type = "l", col = "green",
		 main = "NPV vs. Discount Rate")
lines(NPV2 ~ Rate, DiscountMatrix, col = "blue", lwd = 2)
abline(h = 0, lty = 2, col = "red", lwd = 2)



cashFlow_new <- c(-200, rep(200, 5), -900)

# Range of discount rates
DiscountRates <- seq(0.01,1,0.01)
rates_n <- length(DiscountRates)
# Empty matrix for each project's NPV 
# for each discount rate
DiscountMatrix <- cbind(0,DiscountRates)
colnames(DiscountMatrix) <- c("NPV1", "Rate")

# empty vectors
n <- length(cashFlow_new)
discountCF_new <- rep(0, n)

# Evaluate NPV values at each discount rate
# and store values in rows of discount matrix
for(i in 1:rates_n) {
	for(j in 1:n){
		discountCF_new[j] <- cashFlow_new[j]/(1+DiscountRates[i])^(j-1)
	}
	DiscountMatrix[i,1] <- sum(discountCF_new)
}

# Check that matrix conforms
head(DiscountMatrix)

# Plot NPV vs Discount Rate
plot(NPV1 ~ Rate, DiscountMatrix, type = "l", col = "blue",
		 main = "NPV vs. Discount Rate")
abline(h = 0, lty = 2, col = "red", lwd = 2)


