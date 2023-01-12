### Prev
- poisson dist -> pdf etc
- normal dis
- bernoulli (variance, useful for CTL)
- geo dist
- chebyshevs 
- markovs
- covariance
- converges in law
- converges in probabilityconverges in law
- converges in probability
$var(aX + bY) = a^2 var(X) + b^2 var(Y) + 2ab cov(X, Y)$
<br>

- **Theorem 1.7.1 (Jacobian subs):** Let $X$ be a continuous random varaible with pdf $f_X(x)$ and suport $S_X$. Let $Y=g(x)$ where $g(x)$ is a one-to-one differentiable function, on the support of $X$, $S_X$. Let $dx/dy=d[g^{-1}(y)/dy]$. Then the pdf of $Y$ is given by
$$f_Y(y)=f_X(g^{-1}(y))|\frac{dx}{dy}|,\text{for } y\in S_Y$$,
where the support of $Y$ is the set $S_Y=\{y=g(x):x\in S_X\}$
### TD5
- bias
- quadratic risk
- CLT
> usado para los confidence intervals. Modelas el experimento y luego haces que aproxime normal para pillar el confidence interval del normal
- consistent estimators
- minimal quadratic risk estimator
> al parecer quadratic risk = mse
- maximum likelihood estimator

## TD 6
- method of moments
> Parece que simplemente es poner $E[X]=\bar{X}$ y solvear por $\theta$. Lo que te de $\theta$ será el "method of moments estimator".