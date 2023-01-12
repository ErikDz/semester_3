Yes, one way to show that a function converges in probability is to apply the expectation (or expected value) to the function. Specifically, if X_n is a sequence of random variables and X is a random variable, then we say that X_n converges in probability to X if for every ε > 0,

lim_{n->infinity} P(|X_n - X| > ε) = 0

Another way to express the same concept is that the expected value of the absolute difference between X_n and X converges to zero as n increases.

E(|X_n - X|) -> 0 as n -> infinity

This is called the Markov's inequality which states that for any non-negative random variable X and any positive real number a,
P(X >= a) <= E(X) / a

It can be used to show that a sequence of random variables converges in probability to a constant.

Given $a$ and $b$, we can compute $R$ using the following steps:

Express $R$ in terms of $a$ and $b$, by using the definitions of $a$ and $b$:
$R = g^{-1}(a,b) = \sqrt{a^2+b^2}$

Substitute the values of $a$ and $b$ into the expression of $R$ and solve for $R$:
$R = \sqrt{a^2+b^2}$

So, the way to compute $R$ only given $a$ and $b$ is by computing the square root of the sum of squares of $a$ and $b$, which is $R = \sqrt{a^2+b^2}$

Alternatively, we can also express $\Theta$ in terms of $a$ and $b$, by using the definitions of $a$ and $b$:
$\Theta = g^{-1}(a,b) = atan2(b,a)$

and use it to compute the value of R
$R = g(a,b) = \sqrt{a^2+b^2}$

Note that it's important to use the atan2 function instead of atan to avoid any discontinuity, this function will return the correct value of the angle of the point in the cartesian plane, taking into account the signs of the coordinates (quadrant).