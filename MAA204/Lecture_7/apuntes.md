# Lecture 7 - Hypothesis testing

### 4.5 Introduction to Hypothesis Testing
- Parametric setting: r.v $X$ has a pdf $f(x;\theta)$ (or a pmf $p(x;\theta)$)
- Goal: distinguish between two hypotheses
  - A reference hytpothesis (**null hypothesis**): $H_0:\theta \in \omega_0$
  - An **alternative hypothesis**: $H_1 : \theta\in\omega_1$ with $\omega_0\cap\omega_1 = \empty$
> In this context, $\omega_0$ and $\omega_1$ are sets of values that the parameter $\theta$ can take on under the null hypothesis and alternative hypothesis, respectively. 

#### Hypothesis Testing and Critical Region
1. Define the Null hypothesis to test $H_0$
2. Choose a statistic to test $H_0$, $T(X)$
3. Define the significance level $\alpha$ of the test and associate critical region $C$ such that $P(T(x)\in C | H_0) \le \alpha$
4. Compute the value of the statistics from the data i.e. $t(x) = T(x_1, ..., x_n)$ for the realized sample $X_1 = x_1, X_2=x_2,...,X_n=x_n$
5. Decision rule about $H_0$:
  - Reject $H_0$ if $t(x)\in C$. $H_1$ statistically significant
  - Do not reject $H_0$ if $t(x)\notin C$

#### Two Types of Error
- **Type I error**: we accept $H_1$ and reject $H_0$ when $H_0$ is true (False Positive) $\mathbb{P}(\text{reject} H_0| H_0 \text{ is true}) = \alpha$
- **Type II error**: we accept $H_0$ and reject $H_1$ when $H_1$ is true (False Negative) $\mathbb{P}(\text{fail to reject} H_0| H_1 \text{ is true}) = \beta$
  
#### Size and Power
- **Power:** the probability that a statistical test will correctly reject the null hypothesis when the null hypothesis is false $\gamma_c(\theta)=\mathbb{P}_{\theta}(T(X_1,...,X_n)\in C | H_1)$
> $C=\empty\implies\alpha=0$ and $C=\Omega\implies\alpha=1$
> $\theta$. $\mathbb{P}_\theta$ denotes the probability under the assumption that the true value of the parameter is $\theta$.$C$ is the critical region of the test. $H_1$ is the alternative hypothesis. So, $\gamma_c(\theta)$ is the probability that the test will reject the null hypothesis 

#### Nomenclature
- A hypothesis of type $\theta=\theta_0$ is called  **simple**. Otherwise called composite

### 4.7 Chi-Square Tests
Pearson's chi-squared: $\mathcal(X)^2_{k-1}=\sum\limits_{i=1}^{k} \frac{(O_i - E_i)^2}{E_i}$

### 4.4 Order Statistics