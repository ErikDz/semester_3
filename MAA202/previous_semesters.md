## Previous semesters refresher
---
### MAA102 - McLaurin expansions
- $\ln(1+x) = \sum\limits_{k=1}^{+\infty} (-1)^{k+1}\frac{x^k}{k}$
- $e^x = \sum\limits_{k=0}^{+\infty} \frac{x^k}{k!}$
- $\cos x = \sum\limits_{k=0}^{+\infty} (-1)^k\frac{x^{2k}}{(2k)!}$
- $\sin x = \sum\limits_{k=0}^{+\infty}(-1)^k \frac{x^{2k+1}}{(2k+1)!}$
- $\frac{1}{1-x} = \sum\limits_{n=0}^{+\infty}x^n$
- $\sqrt{1+x}=1+\frac{x}{2}+\frac{1}{8}x^2 + O(x^3)$
- $(1+x)^{\alpha} = \sum\limits_{k=0}^n\binom{\alpha}{k}x^k + O(x^{n+1})$ 

---
### MAA105 - Landau noation 
- **(i)** We say that *f* is big-$\mathcal{O}$ of $g$ at $a$ and write
$$f(x) = \mathcal{O}(g(x)) \text{ when }x\rightarrow a \iff \exists M>0 : \left| \frac{f(x)}{g(x)} \right| < M$$
- **(ii)** We say that *f* is little-$\mathcal{o}$ of $g$ at $a$ and write
$$x f(x) \overset{x\rightarrow a}{=} \mathcal{o}(g(x)) \iff \frac{f(x)}{g(x)} \xrightarrow{x\rightarrow\infty}0$$
- **(iii)** We say that *f* is equivalent to $g$ at $a$ and write 
$$f(x) \underset{x\rightarrow a}{\sim}g(x) \iff \frac{f(x)}{g(x)} \xrightarrow{x\rightarrow\infty} 1$$

<br>
  
- **Theo 1.102 - refined comparison of nonnegatives:** $f,g:I\rightarrow\mathbb{R}_+$ two nonnegative functions, $a\in I$ and $M>0$. Then:
  - (ii) Assume $f(x) \sim g(x)$ when $x \underset{<}{\rightarrow}b$.
  Then, $f$ integrable at $b$ $\iff$ $g$ integrable at $b$.
  
 