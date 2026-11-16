# Quantisation of the uniform distribution in d-dimensional cube $[-1,1]^d$: MATLAB Implementation

## Overview
This repository provides MATLAB implementations for the construction of random designs with small $L_s$-Mean Quantisation Error for the uniform distribution in $[-1,1]^d$. 

The script Example_random_designs_cube.m gives examples of constructions for the cases where the designs consist
- (i) of $n$ points independently distributed, uniformly in a cube $[-\delta_1,\delta_1]^d$, or 
- (ii) of the vertices of a cube $[-\delta_0,\delta_0]^d$, which can be sampled with or without replacement, or by using a deterministic algorithm such as greedy packing. 

All `.m` files required to determine the **optimal values** of $\delta_0$ and $\delta_1$ as functions of $d$, $n$, and $s$ are provided.

When $d$ is large, one is often interested in designs of size $n$ much smaller than $2^d$. Sampling from a suitable subset, of size $2^{d-m}$ of the vertices of $[-\delta_0,\delta_0]^d$ is then convenient. The script Example_fractional_factorial.m contains an example of construction of such a two-level fractional factorial design via simulated annealing. The resulting design has a large packing radius, which makes it quite appropriate to the greedy selection of vertices by greedy packing. 
 
---

## Disclaimer
- These MATLAB functions are provided as-is, in the hope that they will be useful, but **without any warranty or guarantee of fitness for a particular purpose**.
- The implementations of the algorithms from the paper mentionned below have not been optimised for efficiency or numerical accuracy. 
- All functions have been written without the assistance of AI tools, and there is likely room for improvement.

---
## Acknowledgments
If you use these functions in your research, please cite the following paper:
"L. Pronzato, A. Zhigljavsky: Sparse designs via quantization of the uniform measure on high-dimensional hypercubes" 