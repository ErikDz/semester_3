# Lecture 7 - Hypothesis testing

### 4.2 Confidence Intervals
- **Def 4.2.1 - Confidence Interval:** Let $(X_1, ..., X_n)$ be a sample of a random variable $X$, where $X$ has a pdf $f(x;\theta), \theta\in\Omega$ . Let $0 < \alpha < 1$ specified. Let $L=L(X_1,...,X_n)$ and $U=U(X_1,...,X_n)$ be two statistics. We say that the interval $(L,U)$ is a $(a-\alpha)100\%$ **confidence interval** for $\theta$ if
$$1-\alpha=P_{\theta}[\theta\in(L,U)]$$
> That is, the probability that the interval includes $\theta$ is $1-\alpha$ which is called the **confidence** of the interval.

- **Theo 4.2.1 - Central Limit Theorem:** $X_1, ..., X_n$ denote the observations of a random sample from a distribution that has mean $\mu$ and finite variance $\sigma^2$. Then the distribution of the fucntion of the random variable $W_n=(\bar{X} - \mu)/(\sigma/\sqrt{n})$ converges to $\Phi$, the distribution function of the $N(0,1)$ distribution as $n\rightarrow\infty$

#### 4.2.1 Confidence Intervals for Difference in Means
In this section, we compare the means of $X$ and $Y$. We denote the means of $X$ and $Y$ by $\mu_1$ and $\mu_2$ respectively. We obtain confidence intervals for the difference $\Delta=\mu_1-\mu_2$. Let $X_1,...,X_{n_1}$ and $Y_1,...,Y_{n_2}$
Let $\bar{X}=\frac{1}{n_1}\sum_{i=1}^{n_1}X_i$ and $\bar{Y}=\frac{1}{n_1}\sum_{i=1}^{n_1}Y_i$ be the sample means. 
Let $S_1^2=\frac{1}{n_1-1}\sum_{i=1}^{n_1}(X_i-\bar{X})^2$ and $S_2^2=\frac{1}{n_2-1}\sum_{i=1}^{n_2}(X_i-\bar{X})^2$ the sample variances.

- **Pooled estimator of $\sigma^2$:**
$$S_p^2=\frac{(n_1-1)S_1^2)+(n_2-1)S_2^2}{n_1+n_2-2}$$
<br>
From this, we see that the confidence interval for $\Delta = \mu_1 - \mu_2$ is:
$$(\bar{x}-\bar{y}) \plusmn t_{(\alpha/2,n-2)}S_p\sqrt{\frac{1}{n_1}+\frac{1}{n_2}}$$
> $t_{(\alpha/2,n-2)}$ is the critical value of the $t$-distribution. It is found by using the table of critical values fro the $t$-distribution.

#### 4.2.2 Confidence Interval for Difference in porpotions
Let ($X_1,..,X_n$) i.i.d from $X\sim Ber(p_1)$ and ($Y_1,..,Y_n$) i.i.d from $Y\sim Ber(p_2)$. Let us now turn to the problem of finding a confidence interval for the difference $p_1-p_2$.
- Our estimator is the difference in sample proportions: $\bar{X} - \bar{Y} = \hat{p}_1 - \hat{p}_2$(different notation). 
The variance of this estimator is:
$$\hat{\sigma}²=\frac{p_1(1-p_1)}{n_1}+\frac{p_2(1-p_2)}{n_2}$$
- The confidence interval is:
$$\hat{p}_1-\hat{p}_2 \plusmn z_{1-\alpha/2}\sqrt{\frac{p_1(1-p_1)}{n_1}+\frac{p_2(1-p_2)}{n_2}}$$
> In this expression, $z_{1-\alpha/2}$ is the critical value from a standard normal distribution with a $1-\alpha/2$ probability of being exceeded.

### 4.4 Order Statistics
- **Order Statistics:** Statistical values that describe the order of observations within a sample. These values include things like the minimum, maximum, median, and other quantiles of the sample. 
  
- **Theo 4.4.1:** Let $X_1,...,X_n$ denote a sample of continous $X$ of pdf $f_x$. Let $Y_1=minX_i<...<Y_n=maxX_i$. $Y_i$ is called the $i$th **order statistics** of the random sample. We have that: 
$$f_{Y_1,...,Y_n}(y_1,...,y_n)=
 \begin{cases}
       n!f(y_1)f(y_2)...f(y_n) &\quad y_1<y_2<...<y_n\\
       0 &\quad\text{elsewhere}
     \end{cases}
$$ 

and 

$$f_{Y_k}(y_k)=\frac{n!}{(k-1)!(n-k)!}F_x(y_k)^{k-1}(1-F_x(y_k))^{n-k}f_x(y_k)$$

#### 4.4.1 Quantiles
Let $X$ a r.v with an increasing cdf $F(x)$
- **The $\rho$th quantile**, with $0<\rho<1$, is defined as $\xi_p=F^{-1}(p)$
> The $x\in X$ that will give $F(x)=.5$
- **Prop:** $\mathcal{E}(F(Y_k))=\frac{k}{n+1}$
Thus, $Y_k$ is the natural estimate of the $\frac{k}{n+1}$ quantile.

#### 4.4.2 Confidence Intervals for Quantiles
- **Distribution Free property**: For any continuous r.v $X$, let $Y_i$ be the corresponding orderedstatistics, if $i<[(n+1)]<j$ then
$$\mathbb{P}(Y_i<\Xi_p<Y_j)=\sum_limits_{w_i}^{j-1}\binom{n}{w}p^w(1-p)^{n-w}$$

### 4.5 Introduction to Hypothesis Testing
r.v $X$ has a pdf $f(x;\theta)$ where $\theta\in\Omega$. Suppose that we think $\theta\in\omega_1$ or $\theta\in\omega_2$ where $\omega_1\cap\omega_2 = \Omega$ and disjoint. We label these hypotheses as
$$H_0:\theta\in\omega_0\text{versus}H_1:\theta\in\omega_1$$ 
$H_0$ is referred to as the **null hypothesis**, while $H_1$ is referred as the **alternative hypopthesis**.
> Often the null hypothesis represents no change or no difference from the past, while the alternative hypothesis represents change or difference.

|            | $H_0$ is true   | $H_1$ is true|
|------------|---------------|------------|
|Accept $H_0$   | Type I error  | Correct Decision |
|Reject $H_0$   | Correct Decision| Type II error |


We denote the space of the sample by $\mathcal{D} = space\{(X_1,...,X_n)\}$
A **test** of $H_0$ versus $H_1$ is based on a subset $C$ of $\mathcal{D}$ called the **critical region**. The test is based on the following decision rule:
<center>

Reject $H_0$ (Accept $H_1$) if $(X_1,...,X_n)\in C$
**Retain** $H_0$ (Accept $H_1$) if $(X_1,...,X_n)\in C^c$
</center>

> notation $C^c$ refers to the complement of the set $C$. 

- The goal is to select a critical region which minimizes the probabilities of these errors.

- **Def 4.5.1 - size $\alpha$:** We say a critical region $C$ is of **size** $\alpha$ if 
$$\alpha = \max\limits_{\theta\in\omega_0} P_\theta[(X_1,...,X_h)\in C]$$

We want probability of this to be as large as possible. i.e. for $\theta\in\omega_1$, we want to maximize
$$1-P_\theta[\text{Type II Error}] = P_\theta[(X_1,...,X_h)\in C]$$

- **Def - Power function:** The **power function** of a critical region is defined as
$$\gamma_C(\theta)=P_\theta[(X_1,...,X_h)\in C]; \theta\in\omega_1$$

Hence, given two critical regions $C_1$ and $C_2$, which are both of size $\alpha$, $C_1$ is better than $C_2$ if $\gamma_{C_1}(\theta)>\gamma_{C_2}(\theta)$ for all $\theta\in\omega_1$.
