# Read the data from the csv file
data <- read.csv("exponential.csv", header = TRUE)

# Estimate the parameter mhat using the maximum likelihood method
mhat <- 1 / mean(data$x)

# Plot the distribution of the dataset observations
hist(data$x, prob = TRUE, main = "Exponential Distribution", xlab = "x", ylab = "Density")

# Add a line for the exponential distribution with parameter mhat
curve(dexp(x, rate = mhat), add = TRUE, col = "red", lwd = 2)


