## Exercise 1
We have $X\sim \text{Exp}(\lambda)$ with $\lambda=\frac{1}{m}>0$

#### Question 1
The probability density function (PDF) of an exponential random variable X with parameter $\lambda=\frac{1}{m}$ is given by:

$f_X(x) = \lambda e^{-\lambda x}$, for $x \geq 0$ and $f_X(x) = 0$ for $x < 0$.

The mean of $X$ can be found by calculating the first moment about the origin, which is given by:

$\mathbb{E}[X] = \int_{-\infty}^{\infty} x f_X(x) dx = \int_0^\infty x \lambda e^{-\lambda x} dx$

Using integration by parts, we have

$\mathbb{E}[X]= \left[ -xe^{-\lambda x}\right]_0^{\infty} + \int_0^{\infty}e^{-\lambda x}dx = 1/\lambda = m$

The variance of X can be found by calculating the second central moment, which is given by:

$Var[X] = \mathbb{E}[X^2] - (\mathbb{E}[X])^2 = \int_0^{\infty} x^2 \lambda e^{-\lambda x} dx - m^2$

Again, using integration by parts and the fact that $\int_0^{\infty}e^{-\lambda x}dx = 1/\lambda$, we can obtain

$Var[X] = \frac{2}{\lambda^2} - m^2 = \frac{2}{\lambda^2} - \frac{1}{\lambda^2} = \frac{1}{\lambda^2} = m^2$

#### Question 2
Let us compute the likelhood function (denoted as $L(\lambda, x_1,x_2,...,x_N)$).

We have that $L(\lambda, x_1, ..., x_N) = \prod\limits_{i=1}^N f_X(x_i)$
Furthermore,

$$\prod\limits_{i=1}^N f_X(x_i) = \prod\limits_{i=1}^N \frac{1}{m}e^{-\frac{x_i}{m}} =(\frac{1}{m})^N\prod\limits_{i=1}^N e^{-\frac{x_i}{m}}$$
At this point, let us use the logarithmic likelihood function, which is given by:
$$\ell(\lambda, x_1, ..., x_N) = \log L(\lambda, x_1, ..., x_N) = N\log(\frac{1}{m}) -\frac{1}{m}\log(\prod\limits_{i=1}^{N}e^{x_i}) \\
= N(log(1) - log(m))-\frac{1}{m}\sum\limits_{i=1}^N \log(e^{x_i}) \\
=-N\log(m) -\frac{1}{m}\sum\limits_{i=1}^N x_i$$

$$L\left(\frac{1}{m}|x_1, x_2, \dots, x_n\right) = \left(\frac{1}{m}\right)^n \exp\left(-\frac{1}{m}\sum_{i=1}^n x_i\right)$$

Now, let us compute the maximum likelihood parameter $\hat{\lambda}$.
To find the maximum likelihood parameter, we need to find the value of $\lambda$ that maximizes the log-likelihood function. We can do this by taking the derivative of the log-likelihood function with respect to $\lambda$, and setting it equal to zero.

We can use the logarithmic likelihood function derived in the previous step,
$$\ell(\lambda, x_1, ..., x_N) = N\log(\frac{1}{m}) -\frac{1}{m}\sum\limits_{i=1}^{N}x_i$$

Taking the derivative with respect to $\lambda$, and using $\frac{\partial}{\partial \lambda}=-\frac{\partial}{\partial m}$,

$$\frac{\partial}{\partial \lambda} \ell(\lambda, x_1, ..., x_N) = \frac{\partial}{\partial m} (-N\log(m) -\frac{1}{m}\sum\limits_{i=1}^N x_i) = -\frac{\partial}{\partial m} (N\log(m) +\frac{1}{m}\sum\limits_{i=1}^N x_i) $$

$$ =\frac{N}{m}-\frac{1}{m^2}\sum\limits_{i=1}^N x_i = 0 $$

We get that $\lambda = \frac{1}{\bar{X}_n}$

Let us now check whether it is a maximum or a minimum.
We take the second derivative and pass it the previous value
$$\frac{\partial²}{\partial \lambda^2}(l(\frac{1}{\bar{X}_n})) = N - 2\cdot \frac{1}{\bar{X}_n} \cdot \sum\limits_{i=1}^n x_i\le 0 \implies \text{it is a maximum}$$

So the maximum likelihood estimator for $\lambda$, is

$$\hat{\lambda} = \frac{1}{\frac{1}{N}\sum\limits_{i=1}^N x_i} = 1/({\overline{X_n}}) \implies \hat{m}_{ML} = \overline{X}_n  $$

Notice that this estimator is nothing but 1 over the sample mean. 
Hence we notice that $\hat{m}_{ML}$ is nothing but the sample mean

#### Question 3
Let us first check whether it is biased.
We have that 

$$\mathbb{E}[\hat{m}_{ML}] = \frac{1}{N}\sum_{i=1}^n\mathbb{E}(X_i) = \frac{1}{N}\cdot N\cdot \frac{1}{\lambda} = m$$

Because the expected value of $\hat{m}_{ML}$ is equal to the true value of $\lambda$, we can say that $\hat{m}_{ML}$ is an unbiased estimator.

The quadratic risk of an estimator is defined as the expected value of the squared difference between the estimator and the true value of the parameter. For the exponential distribution with parameter $\lambda$, the quadratic risk of the MLE is given by:

$$ R(\hat{m}_{ML},\lambda) = E((\hat{m}_{ML}-\lambda)^2) $$

For unbiased estimator the risk is given by

$$\begin{array}{l l}
R(\hat{m}_{ML},\lambda) 
& = Var(\hat{m}_{ML})\\
& = Var(\frac{1}{N}\sum_{i=1}^N X_i)\\
& = (\frac{1}{N})^2\sum_{i=1}^N Var(X_i)\\
& = (\frac{1}{N})^2\sum_{i=1}^N \frac{1}{\lambda^2}\\
& = \frac{1}{N\lambda^2}
\end{array}$$

#### Question 4
!["graph"](R%20Notebook_files/py_graph1.png)

#### Question 5

We consider $Y_n$ an estimator. Let $Y_n = \min(X_1,...,X_n)$
Let us compute the law of $Y_n$.

We have that $Y_n$ is a random variable with distribution function 
$$F_Y(y) = \mathbb{P}(Y_n \leq y) = \mathbb{P}[\min(X_1,...,X_n) \le y] = 1 - \mathbb{P}[\min(X_1,...,X_n) > y]$$

Since $X_i$ are independent, we have that 
$$\mathbb{P}[\min(X_1,...,X_n) > y] = \prod\limits_{i=1}^N \mathbb{P}[X_i > y] = 1 - \lambda\prod\limits_{i=1}^N  e^{-\lambda y} = 1- \lambda e^{-N\cdot\lambda \cdot y}$$

Hence, 
$$F_Y(y) = \lambda e^{-N\lambda y}$$
We  compute the density function of $Y_n$ by taking the derivative of the distribution function.
$$f_Y(y) = \frac{\partial}{\partial y} F_Y(y) = - \lambda N y\cdot e^{-N\lambda y}$$

#### Question 6
Let us check whether $Y_n$ is an unbiased estimator of $m$.
We already know the law for $Y_n$ as a result from the tds.

We have that

$$\mathbb{E}[Y_n] = \mathbb{E}[n\cdot\min(X_1,...,X_N)] = \frac{1}{n\cdot\lambda}\cdot n = \frac{1}{\lambda} = m$$

Because the expected value of $Y_n$ is equal to the true value of $m$, we can say that $Y_n$ is an unbiased estimator.

Let us now compute its quadratic risk. We recall that for an unbiased estimator, it is its variance.
$$Var(Y_n) = Var(n\cdot\min(X_1,...,X_n)) = n²\cdot\frac{1}{\lambda²\cdot n²} = \frac{1}{\lambda^2} = m^2$$


#### Question 7
As an estimator I would choose $\hat{m}_{ML}$  since it has a lower quadratic risk than  $Y_n$ (and both are unbiased estimators).

#### Question 8
Let us show $\overline{V}_n := \frac{1}{n}\sum_{i=1}^n(X_i - \bar{X}_n)^2$ converges in probability to $Var(X_1)=\frac{1}{\lambda^2}$ where $\bar{X}_n=\sum_{i=1}^n X_i$ is the empirical mean.

We know from the weak law of large numbers that $\bar{X}_n$ converges in probability to $\mathbb{E}[X_1] = \frac{1}{\lambda}$. We also know that convergence in probability implies convergence in distribution.

Next, using the property from continuous mapping theorem, we know that 
$$\overline{V}_n \xrightarrow{} \frac{1}{n}\sum\limits_{i=1}^n (X_i - \mu)^2$$
in distribution.

Using Markov's inequality, we have that
$$\mathbb{P}(|\overline{V}_n - \frac{1}{\lambda^2}| > \epsilon) \leq \frac{\mathbb{E}(|\overline{V}_n - \frac{1}{\lambda^2}|)}{\epsilon}$$

We get
$$\mathbb{E}[\bar{V}_n] = \frac{1}{n}\sum_{i=1}^n \mathbb{E}((X_i - \mu)²) = Var(X_1) = \frac{1}{\lambda^2}$$

This shows that 
$$\frac{\mathbb{E}(|\overline{V}_n - \frac{1}{\lambda^2}|)}{\epsilon}=0\implies \mathbb{P}(|\overline{V}_n - \frac{1}{\lambda^2}| > \epsilon) = 0 $$
$\forall  \epsilon>0$
Proving convergence in probability

#### Question 9
We have $Z_n := \frac{\sqrt{n}(\hat{m}_{ML}-m)}{\sqrt{\bar{V}_n}}$
Using the central limit theorem and the fact that $\bar{V}_n$ converges in probability to $Var(X_1)$, we have that as $n\rightarrow \infty$, $Z_n$ converges in distribution to a standard normal distribution.

#### Question 10 
!["graph"](R%20Notebook_files/py_graph2.png)

#### Question 11
Let $\alpha \in [0,1]$. We know from TD6, that 
$$\mathbb{P}(-z_{1-\frac{\alpha}{2}}<Z_n<z_{1-\frac{\alpha}{2}})=1-\alpha$$
Moreover,
$$\begin{array}{l l}
\mathbb{P}(-z_{1-\frac{\alpha}{2}}<Z_n<z_{1-\frac{\alpha}{2}})
& = \mathbb{P}(-z_{1-\frac{\alpha}{2}}<\frac{\sqrt{n}(\hat{m}_{ML}-m)}{\sqrt{\hat{V}_n}}<z_{1-\frac{\alpha}{2}})\\
& = \mathbb{P}(-\frac{z_{1-\frac{\alpha}{2}}}{\sqrt{n}}\cdot \sqrt{\sigma}<\hat{m}_{ML}-m<\frac{z_{1-\frac{\alpha}{2}}}{\sqrt{n}}\cdot \sqrt{\sigma})\\
& = \mathbb{P}(-\hat{m}_{ML} -\frac{z_{1-\frac{\alpha}{2}}}{\sqrt{n}}\cdot \sqrt{\sigma}<-m<\frac{z_{1-\frac{\alpha}{2}}}{\sqrt{n}}\cdot \sqrt{\sigma} - \hat{m}_{ML})\\
\end{array}$$

Therefore we conclude that the interval $I$ is:
$$(\hat{m}_{ML}-\frac{z_{1-\alpha/2}}{\sqrt{n}}\cdot\sqrt{\sigma},\hat{m}_{ML}+\frac{z_{1-\alpha/2}}{\sqrt{n}}\cdot\sqrt{\sigma})$$

----

### Exercise 2


#### Question 12
Let $U \sim \mathcal{U}([0,1])$. Let $\phi(x) = \sqrt{-2\log(x)}$
Let us find the cumulative distribution function of $R = \phi(U)$
$$F_R(r) = \mathbb{P}[\phi(U)\le r] = \mathbb{P}[U\ge e^{-\frac{r^2}{2}}] = 1- e^{-\frac{r^2}{2}}$$

Let us now compute the density of $R$ by deriving the CDF with respect to $r$.

$$f_R(r) = \frac{d}{dr}F_R(r) = r\cdot e^{-\frac{r^2}{2}}$$

#### Question 13
Let $V\sim \mathcal{U}([0,1])$, independent from $U$.
Let us give the density of the r.v. $\Theta=2\pi V$
We have that $\mathbb{P}[(\Theta) \le \theta ]=\mathbb{P}[2\pi V \le \theta] = \mathbb{P}[V\le \frac{\theta}{2\pi}] = \frac{\theta}{2\pi}$
Taking the derivative of the CDF with respect to $θ$ to get the PDF of $\Theta$, which is 
$$f_{\Theta}(θ) =\frac{d}{d\theta}F(θ) = 1/(2π)$$

Now, we take the joint density of $\Theta$ and $R$.
$$f_{\Theta,R}(\theta,r) = f_{\Theta}(\theta)\cdot f_{R}(r) = \frac{re^{-\frac{r^2}{2}}}{2\pi}$$

#### Question 14
Let $(a,b) = g(R,\theta) = (R\cos(\theta), R\sin(\theta))$. Let us find a way to compute $R$ only given $a$ and $b$.
Taking $R=g^{-1}(a,b)$
we find that $R = \sqrt{a^2+b^2}$

#### Question 15
We have that the second term for $g^{-1}(a,b)$ is $\theta$. From the previous question we can see that the law of $\Theta$ is constant. (same value for all $\theta$).
Now, let us find the analytical expression of $f_{X,Y}(a,b)$
$$\begin{array}{l l}
f_{X,Y}(a,b) &= \frac{f_{R,\theta}(g^{-1}(a,b))}{r}\\
&= \frac{f_{R,\theta}(r)}{r}\\
&= \frac{e^{-r²/2}}{2\pi}
\end{array}$$


#### Question 16
Let us check if $X$ and $Y$ are independent.
Notice that $\frac{1}{\sqrt{2\pi}}e^{\frac{-a^2}{2}}=f_X(a)$
and
$\frac{1}{\sqrt{2\pi}}e^{\frac{-b^2}{2}}=f_Y(b)$
Hence, they are independent

#### Question 17
Since the laws of $X$ and $Y$ match that of a standard normal distribution, it seems the method is a valid way to generate normal distributions from uniform distributions.

#### Question 18
```r
# Generate 3000 samples of U and V i.i.d. following a uniform law in [0,1]
U <- runif(3000)
V <- runif(3000)


#X and Y according to the Box - Muller method
X <- sqrt(-2*log(U))*cos(2*pi*V)
Y <- sqrt(-2*log(U))*sin(2*pi*V)

#plot the histogram of X and Y
hist(X, freq = F, xlim = c(-5, 5), ylim = c(0, 0.5), main = "Histogram of X and Y", xlab = "x", ylab = "density")
```

!["image of hist"](R%20Notebook_files/data_url.png)

```r
hist(Y, freq = F, xlim = c(-5, 5), ylim = c(0, 0.5), main = "Histogram of X and Y", xlab = "x", ylab = "density")
```


!["histogram"](R%20Notebook_files/data_url.2.png)

```r
#compute the covariance between X and Y
cov(X, Y)
```
> [1] -0.01315398

```r
#Generate 3000 samples using the rnorm function of R
Z <- rnorm(3000)

#plot the histogram of Z
hist(Z, freq = F, xlim = c(-5, 5), ylim = c(0, 0.5), main = "Histogram of Z", xlab = "x", ylab = "density")
```


!["histogram"](R%20Notebook_files/data_url.3.png)

Comment: The histograms of X and Y are very similar to the histogram of a standard normal distribution. The calculated covariance is very close to 0, which means that X and Y are independent. 


#### Question 19 
```r
#Generate N1,N2 two vectors of 3000 sample of a normal distribution using the funntion rnorm
N1 <- rnorm(3000)
N2 <- rnorm(3000)

#Generate E1,E2 a vector of 3000 samples of an exponential distribution using the function rexp
E1 <- rexp(3000)
E2 <- rexp(3000)

#Plot the quantile-quantile diagrams of N1 and N2
qqnorm(N1)
qqline(N1)
```
!["histogram"](R%20Notebook_files/data_url.4.png)

```r
qqnorm(N2)
qqline(N2)
```
!["histogram"](R%20Notebook_files/data_url.5.png)

```r
qqplot(N1,N2)
```

!["histogram"](R%20Notebook_files/data_url.6.png)

```r
#Plot the quantile-quantile diagrams of E1 and E2
qqnorm(E1)
qqline(E1)
```

!["histogram"](R%20Notebook_files/data_url.7.png)

```r
qqnorm(E2)
qqline(E2)
```

!["histogram"](R%20Notebook_files/data_url.7.png)

```r
qqplot(E1,E2)
```

!["histogram"](R%20Notebook_files/data_url.9.png)

We observe that the graph of $N1$ and $N2$ and for $E1$ and $E2$ the distribution is linear. For the graph of $N1$  and $E1$ the relationship is not linear. This is because of the reason that the exponential distribution is not a normal distribution (distributions not the same).

#### Question 20

```r
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
```
![histogram](R%20Notebook_files/Rplot.png)
![histogram](R%20Notebook_files/Rplot01.png)
![histogram](R%20Notebook_files/Rplot02.png)
![histogram](R%20Notebook_files/Rplot03.png)

As we can see, the qqplot comparing the samples generated through the Box-Muller method with the exponentially distributed sampels is not linear, but the qqplot of the samples generated through the Box-Muller method with the normal distributed samples is linear. This behaviour is proper of that of a normal distribution, allowing us to deduce that the Box-Muller method is a valid way to generate normal distributed samples.