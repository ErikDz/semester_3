# Generate N1 and N2 normal distributions with 3000 sample points
N1 <- rnorm(3000, mean = 0, sd = 1)
N2 <- rnorm(3000, mean = 5, sd = 2)

# Generate E1 and E2 exponential distributions with 3000 sample points
E1 <- rexp(3000, rate = 0.5)
E2 <- rexp(3000, rate = 1)

library(stats)
qqplot(N1, N2)
qqplot(E1, E2)
qqplot(N1, E1)
