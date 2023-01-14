# Lecture 13 - Changing variables
### 4.3 Changing variables
- **Theo 4.3.1:** $\Omega$ a $C^1$ diffeopmorphic to a compact rectangle set and $\varphi$ the restriction to $\Omega$ of a $C¹$ diffeomorphism. We have that $\varphi(\Omega)$ is $C¹$ diffeomorphic to a rectangle and for all $f$ continuous on $\Omega$,
$$\int_{\varphi(\Omega)}f(x,y)dxdy = \int_{\Omega} f(\varphi(z,t))jac(\phi(z,t))dzdt$$

---
### 4.4 Polar Coordinates
- **Prop 4.4:** Let 
$$\begin{align*}
\varphi\colon (-\pi,\pi)\times\mathbb{R}^*_+ & \rightarrow \mathbb{R}^2\\
  (\theta,r) & \mapsto (r\cos\theta,r\sin\theta)
\end{align*}$$
It is a $C¹$ diffeomorphism on $\Omega=(-\pi,\pi)\times\mathbb{R}^*_+$, we have:
$$\varphi(\Omega) = \{(x,y)\in\mathbb{R}^2|y\not ={0}\text{ or }x>0\};$$
and 
$$jac(\varphi)(r,\theta) = r$$

<br>
<br>

- **Remark 4.4.1:** We have
$$\varphi(\Omega)=\mathbb{R}²\setminus D$$
with 
$$D=\{(x,0)|x\le 0\}$$

<br>
<br>

- **Corollary 4.4.1:** Let
$$\begin{align*}
\varphi_{\theta_0}\colon (-\pi+\theta_0,\pi+\theta_0)\times\mathbb{R}^*_+ & \rightarrow \mathbb{R}^2\\
  (\theta,r) & \mapsto (r\cos\theta,r\sin\theta)
\end{align*}$$
is a $C¹$ diffeomorphism on $\Omega_{\theta_0} = (-\pi+\theta_0, \pi+\theta_0)\times\mathbb{R}^*_+$

<br>
<br>

- **Remark 4.4.3:** We have
$$\varphi_{\theta_0}(\Omega_{\theta_0})=\mathbb{R}^2\setminus D_{\theta_0}$$
with 
$$D_{\theta_0}=\{\lambda(\cos \theta_0, \sin \theta_0 )| \lambda \le 0\}$$

<br>
<br>

- **Corollary 4.4.2:** Let $A$ be a $C¹$ diffeomorphic to a compact rectangle set. Let $f$ be a continuous map on $A$. Write $\tilde{A}=\{(x,y)\in A| y\ne 0\text{ or } x>0\}$. We have:
$$\int_A f(x,y)dxdy = \int_{\varphi^{-1}(\tilde{A})} f(r\cos \theta, r\sin\theta)rdrd\theta$$