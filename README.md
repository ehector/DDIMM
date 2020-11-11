# DDIMM

This repository is an R package implementing methods from the following two publications:
- Emily C. Hector and Peter X.-K. Song (2020). A distributed and integrated method of moments for high-dimensional correlated data analysis. 
Journal of the American Statistical Association, pages 1–14. doi: 10.1080/01621459.2020.1736082.
- Emily C. Hector and Peter X.-K. Song (2020). Doubly distributed supervised learning and inference with high-dimensional correlated outcomes. 
Journal of Machine Learning Research, 21:1–35.

Briefly, the method performs regression analysis of high-dimensional correlated responses. It divides data into blocks according to supplied indicators, 
analyses blocks using composite likelihood or generalized estimating equations, and combines blocks using a meta-estimator asymptotically equivalent to 
the optimal generalized method of moments (GMM) equation.
