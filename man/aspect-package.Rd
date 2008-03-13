\name{aspect-package}
\alias{aspect-package}
\alias{aspect}
\docType{package}
\title{
Aspects of Multivariables
}
\description{This package consists of two main functions: The first function is corAspect() performs (optimal) scaling by maximizing an aspect (i.e. target function such as sum eigenvalues, sum of squared correlations, squared multiple correlations, etc.) of the corresponding correlation matrix. The second function is lineals() which performs scaling by mimimization a non-correlational aspect based on pairwise correlations and correlation ratios. The resulting correlation matrix and category scores can be used for further multivariate methods such as SEM. 
}
\details{
\tabular{ll}{
Package: \tab aspect\cr
Type: \tab Package\cr
Version: \tab 0.8-0\cr
Date: \tab 2008-03-13\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr
}
The main functions are \code{lineals} and \code{corAspect}. Both produce an object of class \code{"aspect"}. For this class, print, summary and plot methods are provided.
}
\author{
Jan de Leeuw, Patrick Mair
Maintainer: Jan de Leeuw <deleeuw@stat.ucla.edu>
}
\references{
Mair, P., & de Leeuw, J. (2008). A general framework for multivariate analysis with optimal scaling: The R package aspect. Journal of Statistical Software, forthcoming.
}

\keyword{ package }
\seealso{\code{\link{corAspect}}, \code{\link{lineals}}
}
\examples{
data(galo)
res.lin <- lineals(galo)
res.lin
summary(res.lin)

}
