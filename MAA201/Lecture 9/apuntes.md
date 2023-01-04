## <ins>Trigonalization</ins>

Let $K$ be a field

- **Def - Upper Triangular:** A matrix $A$ is upper triangular if $a_{i,j}=0$ for all $i>j$
  

- **Def - Triagonizable:** $A \in M_n(K)$ is *triagonizable* when $A$ is similar to a upper triangular matrix. That is, there is $P \in GL_n(K)$ s.t $PAP^{-1}$ is upper triangular
<br>

- **Lemma 1:** A triagonalizable matrix always admits an eigenvalue
<br>

- **Theorem:** Let $A \in M_n(K)$. The following are equivalent:
  1. A is triagonalizable
  2. the characteristic polynomial $\chi_A$ of $A$ splits over $K$
  3. rhe minimal polynomial $P_A$ of A splits over $K$
> In this context, "split over" means that the polynomial can be written as the product of its linear factors. Which means can be factorized. 

- **Corollary 1:** Any matrix over $C$ is trigonalizable
- **Corollary 2:** Any nilpotent matrix is trigonalizable. More precisely, it is similar to an upper triangular matrix with only 0's on the diagonal
> A nilpotent matrix is a square matrix $A$ such that $A^k = 0$ for some positive integer $k$.

- **Proposition 3:** For any $A \in M_n(K)$ trigonalizable, we have:
    - $trace(A) = \sum_{\lambda \in A}\lambda$
    - $det(A) = \prod_{\lambda \in A}\lambda$

---
## <ins> Reduction through topology

- **Lemma 1:** Let $|||.|||$ be a submultiplicative norm on $M_n(K)$. Then for any matrix $A \in M_n(K)$ with $|||A||| < 1$ the matrix $Id - A$ is invertible.
> Suppose we have a vector space V and a norm ||·|| on V. Then the **submultiplicative inequality** states that:
> $||x + y|| ≤ ||x|| * ||y||$

- **Theo 1:** The subset $GL_n(K)$ is open in $M_n(K)$
- **Theo 2:** $GL_n(K)$ is dense in $M_n(K)$
- **Theo 3:** The set of diagonalizable matrices of $M_n(\mathbb{C})$ is dense in $M_n(\mathbb{C})$

<br>

- **Corollary 1 - Cayley Hamilton:** $\forall A \in M_n(\mathbb{C}), \chi_A(A)=0$
- **Lemma 2:** Let $A \in M_n(\mathbb{C})$. For any eigenvalue $\lambda$ of $A$, we have
$$|\lambda| \le |||A|||$$

- **Theo 4:** For any $A \in M_n(\mathbb{C})$, we have
$$\log \rho(A) = \lim_n\frac{\log |||A|||}{n}$$