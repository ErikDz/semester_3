U <- runif(3000)
V <- runif(3000)
X <- sqrt(-2 * log(U)) * cos(2 * pi * V)
Y <- sqrt(-2 * log(U)) * sin(2 * pi * V)

# Plot histogram of X
hist(X, main = "Histogram of X", xlab = "X", col = "blue")

# Plot histogram of Y
hist(Y, main = "Histogram of Y", xlab = "Y", col = "red")

# Plot histogram of normal distribution
hist(rnorm(3000), main = "Histogram of Normal Distribution")

data <- data.frame(X, Y)
covariance <- cov(data)
covariance

cov(X, Y)
