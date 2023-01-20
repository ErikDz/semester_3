### Lecture 1
- **Def - group:**
    1. **Associativity:** $x*(y*z)=(x*y)*z$
    2. **Neutral element:** $\exists e\in G : x*e=e*x=x$
    3. **Inverse:** $\forall x\in G, \exists x^{-1}\in G : x*x^{-1}=x^{-1}*x=e$

- **Def 2.2 - Abelian:** $x*y=y*x$
- **Def 2.3 - group morphism:** $\varphi:G_1\rightarrow G_2$ s.t $\varphi(x*_1y)=\varphi(x)*_2\varphi(y)$
> isomorphism $\implies$ is injective
> $\varphi(e_{G_1})=e_{G_2}$
> $\varphi(x^{-1})=\varphi(x)^{-1}$

- **Def 2.5 - subgroup:** 
    1. $e\in H$
    2. $x,y\in H\implies x*y\in H$
    3. $\forall x\in H, x^{-1}\in H \text{ lies in } H$
> Prove that $x,y\in H\implies x*y^{-1}\in H$

- **Def - order:** Let $G$ a group. $g\in G$ has finite order $n\ge 1$ if $g^n=e$ but $g^m\ne e$ for all integer $1\le m \le n$. If no such integer, g has an infinite order

### Lecture 2
- **Def 2.3.1 - Subgroups of $\mathbb{Z}$:** if $0\in X$ and $x\plusmn y\in X, \forall x,y\in X$
- **Theo 2.3.3 - Bézouts theorem:** $a,b\in\mathbb{Z}^* \implies a\mathbb{Z}+ b\mathbb{Z} = \gcd(a,b)\mathbb{Z}$
- **Lemma 2.3.4 - Euclid's lemma:** $a,b\in\mathbb{Z}^*$ with $p$ a prime. $p|ab$ and $p\nmid b \implies p|b$

- **Theo 3.3.2 - CRT:** $m,n\ge 1$ and $gcd(m,n)=1$, then 
$$\mathbb{Z}/mn\mathbb{Z} \rightarrow \mathbb{Z}/m\mathbb{Z}\times\mathbb{Z}/n\mathbb{Z}$$ is bijective
> A: $\mathbb{Z}/\mathbb{Z}n$ is the set of integers modulo $n$, where $n$ is a positive integer. It is the set of all remainders when integers are divided by $n$.

> The way to solve
> $$n \equiv 3\mod 5\\n\equiv 2\mod 7$$
> 1. Solve 1st eq. $n\equiv 3\mod 5 \implies n=3+5k, k\in\mathbb{Z}$
> 2. Put into 2nd equ. $3+5k\equiv 2\mod 7 \implies 5k\equiv -1\mod 7 \implies k\equiv -3\mod 7$
> 3. $k=-3+7t$
> 4. Substitute into original eq 


### Lecture 3
- **Def 3.1 - ring:** A triple $(R,+,\cdot)$: 
    1. $0,1\in A$
    2. $x\cot(y+z)=x\cdot y + x\cdot z$

- **Def 3.2 - Commutative:** $x\cdot y = y\cdot x\ \  \forall x,y\in \mathbb{R}$

- **Def 3.3 - Subring** 
    1. $0,1\in A$
    2. $a,b\in A \implies a\plusmn b,\ \ a\cdot b \in A$

### Lecture 4 
- **Def 3.4 - Ideal:** $I$ subring of $(R,+,\cdot)$
$$\forall x \in \mathbb{R}, \forall y\in I, \ \ x\cdot y \in I$$

- **Prop 3.2** ALl ideals of $\mathbb{Z}$ are of the form $n\mathbb{Z}, \ \ n\in\mathbb{N}$

### Lecture 5
- **Theo - Euclidean division of polynomials:** Let $A,B\in K[X]$ be polynomials with $B\ne 0$. There exist unque polynomials $Q,R\in K[X]$ with $deg(R)<deg(B)$ s.t.
$$A=B\cdot Q + R$$

- We say $a\in K $ is a **root** of $P\in K[X]$ if $P(a) = 0$

- **Theo - Unique factorisation of polynomials:** For each $P\in K[X]$, there exists a uniquedecomposition
$$P=a\cdot P_1 \ldots P_n$$
where $a\in K$ and each $P_i$ is an irreducible monic polynomial

> deducir gcd de polinomios con euclids algo

### Lecture 6
- **Def - minimal polynomial:** The monic polynomial of smallest degree $P\in \mathbb{K}[X]:P(f)=0$
<br>
- **Corollary 5.4:** E an n-dimensional vector space. A endomorphism $f\in \mathcal{L}$ is diagonalizable if and only if $f$ has n distinct eigenvalues
<br>
- $f(x) \in \mathbb{K}[X]$ any polynomial. If $\lambda$ is an eigenvalue of $A$ associated to the eigenvector $v$, then $f(\lambda)$ is an eigenvalue of $A$ associated to the eigenvector $f(v)$
<br>
- **Def - eigenvalue of matrix:** $\lambda$ eigenvalue of matrix $A \ \iff$ $A-\lambda I$ not injective

### Lecture 7
- **Def 5.6 - Diagonalisable:** $E$ a finite-dimensional K-vector space. An endomorphism $f\in\mathcal{L}(E)$ is said to be diagonalisable if
$$E=\bigoplus\limits_{\lambda\text{ eigenvalue of }\lambda}E_\lambda$$
> $\sum dim_k E_\lambda = dim_k E$

- **Def - eigenspace:** $E_{\lambda_i} = \{x\in V | A\cdot x = \lambda_i\cdot x\}$

- **Theo 5.5:** $E$ finite dimension k-vector space. $f\in\mathcal{L}$ diagonalisable $\iff$ its min poly is a product of distinct factors of degree one in $K[X]$

<br>

- **Theo 5.6 - Lemme des noyaux:** $E$ finite-dim K-vect space. $f\in\mathcal{L}(E)$ and $P\in\mathbb{K}[X]$. Assume $P=P_1\ldots P_n$ where $P_i\in K[X]$ are pairwise coprime polynomials, and set $K_i = \ker P_i(f)$. Then:
    1. The vector subspaces $K_i$ satisfy $f(K_i)\subset K_i$
    2. $\ker P(f)=\bigoplus_{i=1}^h K_i$
    3. If $P$ is the min poly of f, then $E=\bigoplus_{i=1}^h K_i$ and the restriction $f_{\restriction K_i}$ of $f$ to $K_i$ has minimal poly $P_i$

<br>

- **Def 5.7 - characteristic poly:** $E$ finite-dim K-vect space. $f\in\mathcal{L}(E)$. The characteristic poly of $f$ if char ply of a matrix $A$ representing $f$ in a basis of E.
$$\Chi_f=\det(f-X\cdot I_d) = \det(A-X\cdot I_a)$$

- **Corollary 5.8:** If $\mathbb{K}=\mathbb{C}$, $E$ a $\mathbb{K}$-vector space of $\dim\ge 1$, then $f$ has at least one eigenvalue
<br>
- **Def - nilpotent:** $f$ nilpotent $\iff$ $\exists n\in\mathbb{N}$ s.t. $f^n=0$


### Lecture 8
- **Theo 5.9 - Cayley Hamilton:** E a finite-dim $\mathbb{K}$-vector space and $f\in\mathcal{L}(E)$. The min polynomial of $f$ divides the char poly of $f$.
  
- **Corollary 5.10:** E $n$-dim $\mathbb{K}$-vecotr space. If char poly has $n$ distinct roots in $\mathbb{K}$, then it agrees with the min polynomial and $f$ is diagonalisable

- **Theo 5.11:** $f\in\mathcal{L}(E)$ and $\lambda_1,\ldots,\lambda_n$ the distinct eigenvalues of $f$. Then $f$ diagonalisable $\iff$ f is the char poly of $f$

### Lecture 9
---
- **Theo 5.13 - Jordan Chevalley Decomposition:** $f\in\mathcal{L}(E)$ whose char poly is in the form $\Chi_f=\prod\limits_{i=1}^r(\lambda_i - X)^{n_i}$. There exists a unique pair $(d,n)\in\mathcal(E)^2$ such that:
    1. $f = d+n$
    2. $d$ is diagonalisbale
    3. $n$ is nilpotent
    4. $d$ and $n$ commute, that is, $d\circ n=n\circ d$

- **The algorithm:**
    1. Find the characteristic polynomial of $A$
    2. Find $W_i = (x-\lambda_1)\ldots (x-\lambda_{i-1})(x-\lambda_{i+1})\ldots(x-\lambda_n)$  (simply remove $(x-\lambda_i)$ of $\Chi_f$)
    3. Find $Q_1,\ldots, Q_n$ such that $\sum_{i=1}^n W_iQ_i = 1$
    4. Finally find $D=\sum_{i=1}^n\lambda_i Q_i W_i$
    5. To find N, do $N=A-D$

---


- **Def - Upper Triangular:** A matrix $A$ is upper triangular if $a_{i,j}=0$ for all $i>j$
  

- **Def - Triagonizable:** $A \in M_n(K)$ is *triagonizable* when $A$ is similar to a upper triangular matrix. That is, there is $P \in GL_n(K)$ s.t $PAP^{-1}$ is upper triangular

- **How to trigonalize matrix:** same as diagonalisation. Only difference: Diagonal matrix now denoted as $T$ and:
> $\\ $
> $$ T= \begin{bmatrix}
    \lambda_1 & 1 & 0 \\
    0 & \lambda_2 & 1 \\
    0 & 0 & \lambda_3
  \end{bmatrix}\\ \ \\ A=PTP^{-1}$$
<br>


### EXTRAS
- **Cauchy product formula:** 
$$(\sum\limits_{i=0}^\infty a_i)\cdot(\sum\limits_{j=0}^\infty b_j) = \sum\limits_{k=0}^\infty \sum\limits_{l=0}^k a_l\cdot b_{k-l}$$