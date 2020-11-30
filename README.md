# About

This repository is an R package implementing methods from the following two publications:
- Emily C. Hector and Peter X.-K. Song (2020a). A distributed and integrated method of moments for high-dimensional correlated data analysis. 
Journal of the American Statistical Association, pages 1–14. doi: 10.1080/01621459.2020.1736082.
- Emily C. Hector and Peter X.-K. Song (2020b). Doubly distributed supervised learning and inference with high-dimensional correlated outcomes. 
Journal of Machine Learning Research, 21:1–35.

Briefly, the method performs regression analysis of high-dimensional correlated responses. It divides data into blocks according to supplied indicators, 
analyses blocks using composite likelihood or generalized estimating equations (GEE), and combines blocks using a meta-estimator asymptotically equivalent to 
the optimal generalized method of moments (GMM) equation.

Any questions or bug-reports should be mailed to ehector@ncsu.edu.

# Installation

The DDIMM R package can be installed from the downloaded gzipped tarball as R CMD INSTALL DDIMM_1.0.tar.gz. Please make sure to have all packages listed in the DESCRIPTION file already installed.

# Citation

If you use the DDIMM R package, please consider citing the relevant manuscript: Hector & Song (2020a) or Hector & Song (2020b).

# References

The posdef.matrix function was written by Ravi Varadhan: https://stat.ethz.ch/pipermail/r-help/2008-February/153708.

The GEE implementation is through the R package geepack: Højsgaard, S., Halekoh, U., Yan, J. (2006). The R package geepack for generalized estimating equations. Journal of Statistical Software, 15(2):1–11.
