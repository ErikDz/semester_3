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

- **Def - order:** Let $G$ a group. $g\in G$ has finite order $n\ge 1$ if $g^n=e$ but $g^m\ne e$ for all integer $1\le m \le n$. If no such integer, g has an infinite order

### Lecture 2
- **Def 2.3.1 - Subgroups of $\mathbb{Z}$:** if $0\in X$ and $x\plusmn y\in X, \forall x,y\in X$
- **Theo 2.3.3 - Bézouts theorem:** $a,b\in\mathbb{Z}^* \implies a\mathbb{Z}+ b\mathbb{Z} = \gcd(a,b)\mathbb{Z}$
- **Lemma 2.3.4 - Euclid's lemma:** $a,b\in\mathbb{Z}^*$ with $p$ a prime. $p|ab$ and $p\nmid b \implies p|b$

- **Theo 3.3.2 - CRT:** $m,n\ge 1$ and $gcd(m,n)=1$, then 
$$\mathbb{Z}/mn\mathbb{Z} \rightarrow \mathbb{Z}/m\mathbb{Z}\times\mathbb{Z}/n\mathbb{Z}$$ is bijective
> A: $\mathbb{Z}/\mathbb{Z}n$ is the set of integers modulo $n$, where $n$ is a positive integer. It is the set of all remainders when integers are divided by $n$.


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

- **Corollary 5.4:** E an n-dimensional vector space. A endomorphism $f\in \mathcal{L}$ is diagonalizable if and only if $f$ has n distinct eigenvalues

