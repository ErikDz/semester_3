### Distributions
##### Bernoulli distribution (discrete) $\sim Ber(p)$
- **pmf:** $f_X(x)=p^x(1-p)^{1-x}$
- **cdf:** $F_X(x)=\sum_{i=0}^x p^i(1-p)^{1-i}$
- **mean:** $p$
- **var:** $p(1-p)$

##### Normal distribuiton (continuous) $\sim \mathcal{N}(\mu,\sigma^2)$ 
- **pdf:** $f_X(x)=\frac{1}{\sqrt{2\pi\sigma^2}}e^{-\frac{(x-\mu)^2}{2\sigma^2}}$
- **cdf:** $F_X(x)=\frac{1}{2}\left[1+\text{erf}\left(\frac{x-\mu}{\sqrt{2\sigma^2}}\right)\right]$ where $\text{erf}(x)=\frac{2}{\sqrt{\pi}}\int_0^x e^{-t^2}dt$
- **mean:** $\mu$
- **var:** $\sigma^2$

##### Poisson distribution (discrete) $\sim Poi(\lambda)$
- **pmf:** $f_X(x)=\frac{\lambda^x e^{-\lambda}}{x!}$
- **cdf:** $F_X(x)=\sum_{i=0}^x \frac{\lambda^i e^{-\lambda}}{i!}$
- **mean:** $\lambda$
- **var:** $\lambda$

##### Exponential distribution (continuous) $\sim Exp(\lambda)$
- **pdf:** $f_X(x)=\lambda e^{-\lambda x}$
- **cdf:** $F_X(x)=1-e^{-\lambda x}$
- **mean:** $\frac{1}{\lambda}$
- **var:** $\frac{1}{\lambda^2}$

##### Geo distribution (discrete) $\sim Geo(p)$
- **pmf:** $f_X(x)=p(1-p)^{x-1}$
- **cdf:** $F_X(x)=1-(1-p)^x$
- **mean:** $\frac{1}{p}$
- **var:** $\frac{1-p}{p^2}$
---
- **Theo - Markov's inequality:** $\mathbb{P}[X\geq a]\leq \frac{E[X]}{a}$
- **Theo - Chebyshev's inequality:** $\mathbb{P}[|X-\mu|>\epsilon]\leq \frac{\sigma^2}{\epsilon^2}$

---
- **Def - Convergence in probability:** $X_n\to X$ in probability if $F_{X_n}(x)\to F_X(x)$ for all $x\in\mathbb{R}$
- **Def - Convergence in law:** $X_n\to X$ in law if $F_{X_n}(x)\to F_X(x)$ for all $x\in\mathbb{R}$
- **Def - Almost sure convergence:** $X_n\to X$ almost surely if $\mathbb{P}[\lim\limits_{n\rightarrow\infty}X_n=x]=1$ 

---
- **Prop:** :$var(aX + bY) = a^2 var(X) + b^2 var(Y) + 2ab cov(X, Y)$
- **Def - Covariance:** $cov(X,Y)=E[(X-\mu_X)(Y-\mu_Y)]$
---
- **Theorem 1.7.1 (Jacobian subs):** Let $X$ be a continuous random varaible with pdf $f_X(x)$ and suport $S_X$. Let $Y=g(x)$ where $g(x)$ is a one-to-one differentiable function, on the support of $X$, $S_X$. Let $dx/dy=d[g^{-1}(y)/dy]$. Then the pdf of $Y$ is given by
$$f_Y(y)=f_X(g^{-1}(y))|\frac{dx}{dy}|,\text{for } y\in S_Y$$,
where the support of $Y$ is the set $S_Y=\{y=g(x):x\in S_X\}$

- $f_X(x) = \int\limits_b^a f(x,y)dy$
---
- **Theo - Weak law of large numbers:** {$X_n$} sequence of iid random variables having a common mean $\mu$ and variance $\sigma??<\infty$. Then
$$\bar{X}_n\xrightarrow{\mathbb{P}}\mu$$

- **Theo - Strong law of large numbers:** {$X_n$} sequence of iid random variables having a common mean $\mu$ and $\mathbb{E}[|X_1|???]<+\infty$. Then
$$\bar{X}_n\xrightarrow{\text{almost surely}}\mu$$


---
### TD3

- **Theo - Law of total probability:** $\mathbb{P}[X>0] + \mathbb{P}[X<0] + \mathbb{P}[X=0]=1$


### TD5
- **Def - Bias:** $bias(\hat{\theta})=E[\hat{\theta}]-\theta$
- **Def - Quadratic risk:** $R(\hat{\theta})=E[(\hat{\theta}-\theta)^2]$
- **Theo - CLT:** $X_1, \dots, X_n$ iid with mean $\mu$ and variance $\sigma^2$.
$$W_n:=\frac{\bar{X}_n-\mu}{\sigma/\sqrt{N}} \xrightarrow{n\rightarrow\infty} \mathcal{N}(0,1)$$
> usado para los confidence intervals. Modelas el experimento y luego haces que aproxime normal para pillar el confidence interval del normal
- **Def 4.2.1 - Confidence Interval:** Let $(X_1, ..., X_n)$ be a sample of a random variable $X$, where $X$ has a pdf $f(x;\theta), \theta\in\Omega$ . Let $0 < \alpha < 1$ specified. Let $L=L(X_1,...,X_n)$ and $U=U(X_1,...,X_n)$ be two statistics. We say that the interval $(L,U)$ is a $(a-\alpha)100\%$ **confidence interval** for $\theta$ if
$$1-\alpha=P_{\theta}[\theta\in(L,U)]$$

> $$\mathbb{P}[-z_{1-\frac{\alpha}{2}}\lt Z \lt z_{1-\frac{\alpha}{2}}]=1-\alpha$$

- **Def - Consistent estimator:** $\hat{\theta}_n\to \theta$ in probability

- **Def - minimal quadratic risk estimator:** $\hat{\theta}_n$ is the minimal quadratic risk estimator if $R(\hat{\theta}_n)\leq R(\hat{\theta})$ for all $\hat{\theta}$
> al parecer quadratic risk = mse
- **Def - Likelihood of $\theta$:** $L(\theta) = \prod\limits_{i=1}^{n} f_{\theta}(x_i)$ 
- **Def - Maximum likelihood estimator:** $\hat{\theta} = argmax L(\theta)$

## TD 6
- method of moments
- **Def - Method of moments estimator:** $\hat{\theta} = argmin_{\theta} \sum\limits_{i=1}^{n} (x_i - \theta)^2$
> Parece que simplemente es poner $E[X]=\bar{X}$ y solvear por $\theta$. Lo que te de $\theta$ ser?? el "method of moments estimator".

## TD 7
- **Def - Type I error probability:** $\alpha = P_{\text{assume }H_0}[\text{ reject }H_0]$
- **Def - Type II error probability:** $\beta = P_{\text{assume }H_1}[\text{ accept }H_0]$

### ADDONS 
- Cuando no se sabe el valor exacto del que estimas ($\lambda$), al calcular el confidence interval tienes que cambiar $\lambda$ por $\hat{\lambda}$ en los bounds. Hay 2 maneras: 
    1. Simplemente cambiar $\lambda$ por $\hat{\lambda}$ en la equaci??n
    2. Derivar el valor exacto de $\lambda$ expresado en t??rminos de $\hat{\lambda}$

Ejemplo:
$$|p-\hat{p}|\le t\sqrt{\frac{p(1-p)}{n}} \iff \frac{\hat{p}+t??/2n-t\sqrt{\frac{\hat{p}(1-\hat{p})}{n}+\frac{t??}{4n??}}}{1+t??/n} \le p \le \frac{\hat{p}+t??/2n+t\sqrt{\frac{\hat{p}(1-\hat{p})}{n}+\frac{t??}{4n??}}}{1+t??/n}$$
VS
$$|p-\hat{p}|\le  t\sqrt{\frac{p(1-p)}{n}} \sim |p-\hat{p}|\le  t\sqrt{\frac{\hat{p}(1-\hat{p})}{n}}\\\iff\\\hat{p}-t\sqrt{\frac{\hat{p}(1-\hat{p})}{n}}\le p \le \hat{p}+t\sqrt{\frac{\hat{p}(1-\hat{p})}{n}}$$

- Cuando al hacer el CTL, no se sabe el valor exacto del variance, hay que hacer una estimaci??n (el empirical mean):
$$\hat{\sigma}_N^2 := \frac{1}{n-1}\sum_{i=1}^n(X_i-\bar{X})^2$$
y usar eso en lugar del $\sigma^2$ real.

En la misma nota, aunque est??s estimando $p$, no se puede sustituir directamente en la equaci??n del variance (a no ser que tengas un sample que te diga lo que es $p$ approx), sino hay que calcular el variance del estimador.
> Por ejemplo, si te dicen que 30 de 300 personas tuvieron ??xito en algo, entonces si que puedes usar el estimador directamente en la equaci??n del variance. Por lo contrario, tienes que pillar el variance del estimador.