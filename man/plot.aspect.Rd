\name{plot.aspect}
\alias{plot.aspect}


\title{Plot method for aspect solutions}
\description{This method provides regression plots and transformation plots for objects of class \code{"aspect"}, i.e. solutions of \code{corAspect} and \code{lineals}
}
\usage{
\method{plot}{aspect}(x, plot.type, plot.var = c(1,2), xlab, ylab, main, type, ...)
}

\arguments{
  \item{x}{Object of class \code{"aspect"}.}
  \item{plot.type}{Type of plot to be produced (details see below): \code{"regplot"}, \code{"transplot"}.}
  \item{plot.var}{For \code{plot.type = "regplot"} only. Vector of length 2 with variables to be plotted. Either variable names of column number.}
  \item{xlab}{Label x-axis.}
  \item{ylab}{Label y-axis.}
  \item{main}{Plot title.}
  \item{type}{Whether points, lines or both should be plotted.}
  \item{\dots}{Additional graphical parameters.}
}
\details{

The regression plot (\code{"regplot"}) provides two plots. First, the unscaled solution is plotted. A frequency grid for the categories of the first variable (var1; x-axis) and the categories of the second variable (var2; y-axis) is produced. 
The regression line is based on the category weighted means of the relative frequencies:  
the blue line on the var1 means on the x-axis and the var2 categories on the y-axis, 
the red line is based on the var1 categories on the x-axis and the var2 means on the y-axis. 
In a second device the scaled solution is plotted. The frequency grid is determined by 
the var1 scores (x-axis) and the var2 scores(y-axis). Now, instead of the var1/var2 categories, the var1 scores (blue line y-axis) and the row scores (red line x-axis) are used.

The transformation plot (\code{"transplot"}) plots the raw categories against the computed scores. 
}

\references{de Leeuw, J., \& Mair, P. (2007). Aspects of multivariables in R. Preprint available at \url{http://gifi.stat.ucla.edu/aspect.pdf}}
\author{Jan de Leeuw, Patrick Mair}

\seealso{\code{\link{lineals}}, \code{\link{corAspect}}}

\examples{

##Regression plots using galo data
data(galo)
res <- lineals(galo[,1:4])
#plot(res, plot.type = "regplot", plot.var = c("advice","SES"))
#plot(res, plot.type = "transplot")
}

\keyword{hplot}

