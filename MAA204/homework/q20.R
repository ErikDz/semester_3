U <- runif(3000)
V <- runif(3000)
X <- sqrt(-2 * log(U)) * cos(2 * pi * V)
Y <- sqrt(-2 * log(U)) * sin(2 * pi * V)

N <- rnorm(3000, mean = 0, sd = 1)
E <- rexp(3000, rate = 0.5)

qqplot(X, E)
qqplot(X, N)
qqplot(Y, E)
qqplot(Y, N)