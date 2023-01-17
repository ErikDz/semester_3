### Exercise 1

#### Q 1.2
Cuando tengo algo como $N_1(f)=||f'||_1$, usar el truco de $f(x)=f(0)+\int\limits_0^x f'(x)dx$.

#### Q 1.3
**PQNS:** intenté integrar $\int\limits_0^1 |n\cos nx|dx$ *sin* sepearar la integral

#### Q 1.6
$g\in C^1([0,1];\mathbb{R})\implies$ T is continuous for $N_2$

Sol:
$f_n\xrightarrow{N_2}f ,(||f_n-f||_\infty\rightarrow 0)$
WTS: $||T(f_n)-T(f)||_\infty\rightarrow 0$

> Computa $T(f_n)(x) = \int\limits_0^x g(t)f(t)f'(t) = \frac{f(x)²}{2}\cdot g(x) - \int\limits_0^x g'(t)\frac{f(t)^2}{2}$
> Luego hace $|T(f_n)(x)-T(f)(x)|$


### Exercise 2
#### Q 2.1
Si tienes una funcion separada como 
\[   
f_n(x,y) = 
     \begin{cases}
       0 &\quad\text{if } x=y=0 \\
       x^n\cdot\frac{x²-y²}{x²+y²} &\quad\text{otherwise}
     \end{cases}
\]

para provear continuity, considera q una de las partes ya es continuous pq es el conjunto de cont functions. Así que el problema reside en el "salto". En este caso cuando $\lim x,y\rightarrow 0,0$

#### Q 2.2
para las derivadas parciales, **especialmente con funciones por partes**, usar la definición formal de derivada
$$\frac{\partial }{\partial x}f(0,0) = \lim_{x\rightarrow 0} \frac{f(x,0) - f(0,0)}{x}$$

Y de nuevo, solo centrarse en la discontinuidad (en este caso 0). Una vez proveado que existe, y que es continuo en 0, ahora compputas $\frac{\partial}{\partial x}$ (o "$y$") ahora provear 