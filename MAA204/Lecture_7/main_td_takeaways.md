### Exercise 1
#### 2. 
Here, since we are dealing with the probability that $\mathbb{P}[|\hat{p}_n-n|\ge \varepsilon]$, we are dealing with the probability that the value of $p$ is **outside** the bound. Hence, instead of bounding the inequality with $\le 1-\alpha$, we simply do $\le\alpha$ since we are dealing with the probability that the value of $p$ is outside the bound.
To think about it,
$$\mathbb{P}[|\hat{p}_n-n|\ge \varepsilon]<\alpha = 1-\mathbb{P}[|\hat{p}_n-n|\ge\varepsilon]< 1- \alpha$$
Where $1-\mathbb{P}[|\hat{p}_n-n|\ge\varepsilon]$ now represents the probability that the value of $p$ is **inside** the bound. Hence, we can simply write $\mathbb{P}[|\hat{p}_n-n|\ge\varepsilon]\le\alpha$.

### Exercise 2
#### 2.
Whenever we have a function like $f(x)=\frac{1}{3\theta}(1+\frac{|x|}{\theta})\mathbb{1}_{|x|\le\theta}$
When calculating the likelihood, we have that 
$$\prod f(x) = \mathbb{1}_{[\max_{1\le i \le n}\{|X_i|\} ]}\prod ...$$

### Exercise 3
#### 2. 
The critical region is the set of values of the test statistic that would lead us to reject the null hypothesis. In this case, the test statistic is the sum of the number of successes in the two independent trials.

#### 3.
Type 1 error defined by $\alpha = \mathbb{P}_{H_0}(\text{Choose }H_1)$

#### 4.
Tenemos que 
$$\mathbb{P}[|W_n|\le z_{\alpha/2}] = 1-\alpha\\\iff\\\mathbb{P}[W_n\le z_\alpha]=1- \alpha\text{ or } \mathbb{P}[W_n\ge -z_{\alpha}]=1 - \alpha$$ 
de toda la vida.

Entonces, el critical region será aquel en el que $W_n\lt -z_{1-\alpha}$. Ya que será la región en la que descartemos $H_0$. Esto se debe a que $\mathbb{P}[W_n<-z_{1-\alpha}] = \alpha$ cumple todos los requisitos ($\mathbb{P}=\alpha$ y reject $H_0$). En este caso escogemos solo un end ya que lidiamos con el tema de q es single-test en el sentido de que $m_0>m_1$
