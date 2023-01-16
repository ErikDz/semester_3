### Prev
- Complexities of classic algos (mergesort, binarysearch,)
- Saber como calc la complejidad de un divide and conquer
- amortized complexity (the average complexity over a sequence of n increments)

### Algos to know
- Quicksort
- Boyer-Moore

### Average case proofs
Consider probabilities of stuff happening and its expected val

### Polynomial time proof
1. Make an algorithm that solves the problem
2. Show its of complexity $O(n^k)$

### NP-completeness proof

![diagram](./NP-Completeness1.png)

Given a problem $L_2$, we use a known NP-complete problem $L_1$ to prove that $L_1$ is NP-complete.
$$x_{\text{input }L_1}\xrightarrow{\text{polynomial time}} x_{\text{input} L_2}$$
> Here we don't know the complexity of "Algorithm for $L_2$", but we encapsulate the whole thing in "Algorithm for $L_1$", which we know is polynomial time.

> Idea is to transform an NP-Hard problem into the problem we want to prove NP-Complete.


### MISC
- Approximation ratio