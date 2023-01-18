### Exercise 1
#### 2.
- **Cauchy product formula:** 
$$(\sum\limits_{i=0}^\infty a_i)\cdot(\sum\limits_{j=0}^\infty b_j) = \sum\limits_{k=0}^\infty \sum\limits_{l=0}^k a_l\cdot b_{k-l}$$

### Exercise 4
#### 2.
- Para provear linear independence, mostrar que $\sum_{i=0}^{n-1}f^i(u)\cdot\lambda_i \ne 0$ con $\lambda_i \ne 0$. Luego ir a por contradiction.
PQNS: No sabía que $\dim E= n$ y tampoco que hacer con $\sum\limits_{i=0}^{n-1} f^i(u)\cdot\lambda_i=0$.
CA: Tenía que $u\in E - \ker(f^{n-1})$. Entonces esto ya me daba una pista que quería algo con $f^{n-1}(u)=0$ para el contradiction. Usar eso con el hecho de que $\lambda_i\ne 0$. También, para "aislar" términos en una suma como esta, se puede mult ambas partes por $f^{n-i_0-1}$ para "aislar" el término que quiero (ya que $< i_0=0$ y $k>n\implies f^k=0$)

#### 3 
Para computar un vector $(u)$ con respecto a un base $(\mathcal{B})$, se hace $\mathcal{B}\cdot u$

A function $f$ in a basis $(e_1,\ldots,e_n)$ is $(f(e_1),\ldots,f(e_n))$

---
$A$ is matrix representing $f$ in standard basis. $B$ is a matrix representing $f$ in basis $B$. $P$ is the basis of $B$. Then,
 $A=PBP^{-1}$

### Exercise 5
- *part $c$ skipped pq suputamadre*

### Exercise 6
#### a.
- **(?)** no entiendo porque $f_{\restriction U_{U_{\lambda_i}}}$ nilpotent $\implies$ $f$ nilpotent (pero si entiendo pq $f_{\restriction U_{U_{\lambda_i}}}$) es nilpotent

#### b.
> $O_{\mathcal{L}(E)}$ is the set of endomorphisms that map to $0_E$ for all $x$

Pusieron lo de $f^p=O_{\mathcal{L}(E)}$ porque $\ker f^p=E$ y así era más fácil de ver lo de incomplete basis theo

#### d.
PQNS: No sabía por donde empezar
CA: Primero de todo, ver la defininción: $f(e_k)\in \bigoplus\limits_{i=1}^k K\cdot e_i$. Usando la pregunta anterior, tienes que $E=F_1\bigoplus\ldots\bigoplus F_p$. Darse cuenta que $f(F_k)\subset F_1\bigoplus\ldots\bigoplus F_{k-1}$ debido a $x\in\ker f^k, f(x)\in \ker f^{k-1}$


### Exercise 7
#### a. 
PQNS: No sabía si escoger un vector o todos
CA: Es escoger uno, por lo cual, hacer g para que cubra todos vectores.
$$g:e_i\mapsto e_{i-1}$$
Así, $g^n(e_i) = e_{i-n}$

#### b-c (skipped)