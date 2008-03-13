\name{lineals}
\alias{lineals}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Linearizing bivariate regressions}
\description{This function performs optimal scaling in order to achieve linearizing transformations for each bivariate regression.
}
\usage{
lineals(data, level = "nominal", itmax = 100, eps = 1e-06)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{Data frame or matrix}
  \item{level}{Vector with scale level of the variables ("nominal" or "ordinal"). If all variables have the same scale level, only one value can be provided}
  \item{itmax}{Maximum number of iterations}
  \item{eps}{Convergence criterion}
}
\details{This function can be used as a preprocessing tool for categorical and ordinal data for subsequent factor analytical techniques such as structural equation models (SEM) using the resulting correlation matrix based on the transformed data. The estimates of the corresponding structural parameters are consistent if all bivariate regressions can be linearized.
}
\value{
  \item{loss}{Final value of the loss function}
  \item{catscores}{Resulting category scores (after optimal scaling)}
  \item{cormat}{Correlation matrix based on the scores}
  \item{cor.rat}{Matrix with correlation ratios}
  \item{indmat}{Indicator matrix (dummy coded)}
  \item{scoremat}{Transformed data matrix (i.e with category scores resulting from optimal scaling)}
  \item{burtmat}{Burt matrix}
  \item{niter}{Number of iterations}
}
\references{
Mair, P., & de Leeuw, J. (2008). Scaling variables by optimizing correlational and non-correlational aspects in R. Journal of Statistical Software, forthcoming.

de Leeuw, J. (1988). Multivariate analysis with linearizable regressions. Psychometrika, 53, 437-454.

}
\author{Jan de Leeuw, Patrick Mair}

\seealso{\code{\link{corAspect}}}
\examples{
data(galo)
res.lin <- lineals(galo)
summary(res.lin)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{models}
