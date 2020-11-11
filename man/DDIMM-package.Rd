\name{DDIMM-package}
\alias{DDIMM-package}
\alias{DDIMM}
\docType{package}
\title{
\packageTitle{DDIMM}
}
\description{
\packageDescription{DDIMM}
}
\details{

THIS SOURCE CODE IS SUPPLIED "AS IS"" WITHOUT WARRANTY OF ANY KIND, AND ITS AUTHOR AND THE JOURNAL OF MACHINE LEARNING RESEARCH (JMLR) AND JMLR'S PUBLISHERS AND DISTRIBUTORS, DISCLAIM ANY AND ALL WARRANTIES, INCLUDING BUT NOT LIMITED TO ANY IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, AND ANY WARRANTIES OR NON INFRINGEMENT. THE USER ASSUMES ALL LIABILITY AND RESPONSIBILITY FOR USE OF THIS SOURCE CODE, AND NEITHER THE AUTHOR NOR JMLR, NOR JMLR'S PUBLISHERS AND DISTRIBUTORS, WILL BE LIABLE FOR DAMAGES OF ANY KIND RESULTING FROM ITS USE. Without limiting the generality of the foregoing, neither the author, nor JMLR, nor JMLR's publishers and distributors, warrant that the Source Code will be error-free, will operate without interruption, or will meet the needs of the user.

The DESCRIPTION file:
\packageDESCRIPTION{DDIMM}
\packageIndices{DDIMM}
}
\author{
\packageAuthor{DDIMM}

Maintainer: \packageMaintainer{DDIMM}
}
\references{
  GEE implementation is through the R package geepack: Højsgaard, S., Halekoh, U., Yan, J. (2006). The R package geepack for generalized estimating equations. Journal of Statistical Software, 15(2):1–11.
  
  Emily C. Hector and Peter X.-K. Song. A distributed and integrated method of moments for high-dimensional correlated data analysis. Journal of the American Statistical Association, pages 1–14, 2020. doi: 10.1080/01621459.2020.1736082.
}

\keyword{ package }
\seealso{
  \code{\link[<geepack>:<geepack>-geepack]{<geepack>}}
}

\examples{
########### Generate Data ########### 
N <- 1000                   # sample size
M <- 200                    # response dimension
family <- "gaussian"        # response is Gaussian distributed
method <- "exact"           # find one-step estimator
analysis <- "GEE"           # using GEE analysis method; can also specify "PCL" for pairwise composite likelihood
theta <- c(0.3, 0.6, 0.8)   # the true parameter value

# The response indicator partitions the response into blocks
# The subject indicator partitions subjects into blocks
response_indicator <- c(rep(1,45), rep(2,42), rep(3,50), rep(4,34), rep(5,29))
subject_indicator <- c(rep(1,N/2), rep(2,N/2))

# Generate a dataset with two covariates, response of 
# dimension M with block AR-1 covariance structure
data <- dataset.normal.X2(family, N, M, theta, response_indicator, seed=500)

########### Analysis with DDIMM ###########

# Model block covariance with independence structure
results.ind <- dimm(response~X1+X2, data, id="id", response_indicator, subject_indicator, 
                    family, corstr="independence", method, analysis, cluster=5)

# Model block covariance with compound symmetry structure
results.CS <- dimm(response~X1+X2, data, id="id", response_indicator, subject_indicator, 
                   family, corstr="CS", method, analysis, cluster=5)

# Model block covariance with AR-1 structure                             
results.AR1 <- dimm(response~X1+X2, data, id="id", response_indicator, subject_indicator, 
                    family, corstr="AR1", method, analysis, cluster=5)
                                        
## Goodness-of-fit test
objective.dimm(results.AR1)
}
