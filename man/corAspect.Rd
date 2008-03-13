\name{corAspect}
\alias{corAspect}
\alias{print.aspect}
\alias{summary.aspect}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Scaling by Maximizing Correlational Aspects}
\description{This function performs optimal scaling by maximizing a certain aspect of the correlation matrix.
}
\usage{
corAspect(data, aspect = "aspectSum", level = "nominal", itmax = 100, eps = 1e-06, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{Data frame or matrix}
  \item{aspect}{Function on the correlation matrix (see details)}
  \item{level}{Vector with scale level of the variables ("nominal" or "ordinal"). If all variables have the same scale level, only one value can be provided}
  \item{itmax}{Maximum number of iterations}
  \item{eps}{Convergence criterion}
  \item{...}{Additional parameters for aspect}
}
\details{We provide various pre-specified aspects: 

\code{"aspectAbs"} takes the sum of the absolute values of the correlations to the power \code{pow}. The optional argument \code{pow = 1}. 

\code{"aspectSum"} the sum of the correlations to the power of \code{pow}. Again, as default \code{pow = 1}. 

\code{"aspectDeterminant"} computes the determinant of the correlation matrix; no additional arguments needed.

\code{"aspectEigen"} the sum of the first p eigenvalues (principal component analysis). By default the argument \code{p = 1}. 

\code{"aspectSMC"} the squared multiple correlations (multiple regression) with respect to a target variable. By default \code{targvar = 1} which implies that the first variable of the dataset is taken as response. 

\code{"aspectSumSMC"} uses the sum of all squared multiple correlations (path analysis). 

Alternatively, the user can write his own aspect, e.g. the function \code{myAspect(r, ...)} with r as the correlation matrix. This function must return a list with the function value as first list element and the first derivative with respect to r as the second. Then \code{aspect = myAspect} and additional arguments go into \code{...} in \code{maxAspect()}. 
    
}
\value{
  \item{loss}{Final value of the loss function}
  \item{catscores}{Resulting category scores (after optimal scaling)}
  \item{cormat}{Correlation matrix based on the scores}
  \item{eigencor}{Eigenvalues of the correlation matrix}
  \item{indmat}{Indicator matrix (dummy coded)}
  \item{scoremat}{Transformed data matrix (i.e with category scores resulting from optimal scaling)}
  \item{burtmat}{Burt matrix}
  \item{niter}{Number of iterations}
}
\references{
Mair, P., & de Leeuw, J. (2008). Scaling variables by optimizing correlational and non-correlational aspects in R. Journal of Statistical Software, forthcoming.

de Leeuw, J. (1988). Multivariate analysis with optimal scaling. In S. Das Gupta and J.K. Ghosh, Proceedings of the International Conference on Advances in Multivariate Statistical Analysis, pp. 127-160. Calcutta: Indian Statistical Institute.
}
\author{Jan de Leeuw, Patrick Mair}

\seealso{\code{\link{lineals}}}
\examples{

## maximizes the first eigenvalue
data(galo)
res.eig1 <- corAspect(galo[,1:4], aspect = "aspectEigen")
res.eig1
summary(res.eig1)

## maximizes the first 2 eigenvalues
res.eig2 <- corAspect(galo[,1:4], aspect = "aspectEigen", p = 2)
res.eig2

## maximizes the absolute value of cubic correlations
res.abs3 <- corAspect(galo[,1:4], aspect = "aspectAbs", pow = 3)
res.abs3

## maximizes the sum of squared correlations
res.cor2 <- corAspect(galo[,1:4], aspect = "aspectSum", pow = 2)
res.cor2

## maximizes the determinant
res.det <- corAspect(galo[,1:4], aspect = "aspectDeterminant")
res.det

## maximizes SMC, IQ as target variable
res.smc <- corAspect(galo[,1:4], aspect = "aspectSMC", targvar = 2)
res.smc

## maximizes the sum of SMC
res.sumsmc <- corAspect(galo[,1:4], aspect = "aspectSumSMC")
res.sumsmc

## some user-defined non-sense aspect
## first list element corresponds to function value, second to first derivative
myAspect <- function(r, a = 1, b = 1) list(a*b*r, matrix(a*b, nrow = nrow(r), ncol = ncol(r)))
res.my <- corAspect(galo[,1:4], aspect = myAspect, a = 2, b = 4)
res.my



}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{models}

