% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimal_span.r
\name{optimal_span}
\alias{optimal_span}
\title{Calculates the optimal span for a loess spline
smoother based upon the bayesian information
criterion (BIC).}
\usage{
optimal_span(y, x = NULL, weights = NULL, step = 0.01, label = NULL,
  plot = FALSE)
}
\arguments{
\item{y}{a vector with measurement values to smooth}

\item{x}{a vector with dates / time steps}

\item{weights}{optional values to weigh the loess fit with}

\item{step}{span increment size}

\item{label}{title to be used when plot == FALSE}

\item{plot}{plot visual output of the optimization routine}
}
\description{
Calculates the optimal span for a loess spline
smoother based upon the bayesian information
criterion (BIC).
}
\examples{

\dontrun{
# Internal function only, should not be used stand-alone.

l = sin(1,10,0.01)
l = l + runif(length(l)))
optimal_span(l, plot = TRUE)
}
}
\keyword{loess,}
\keyword{series}
\keyword{smoother,}
\keyword{span,}
\keyword{time}
