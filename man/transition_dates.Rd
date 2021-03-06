% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transition_dates.r
\name{transition_dates}
\alias{transition_dates}
\title{Calculates transition dates on the upward
segments of a PhenoCam time series. This function
should not be run stand-alone. Use phenophases() instead!
The required input is a smoothed PhenoCam data file or data frame.}
\usage{
transition_dates(df, lower_thresh = 0.1, middle_thresh = 0.25,
  upper_thresh = 0.5, percentile = 90, penalty = 0.5, seg_length = 14,
  frequency = NULL, reverse = FALSE, plot = FALSE)
}
\arguments{
\item{df}{a PhenoCam data file or data frame}

\item{lower_thresh}{the minimum threshold used (default = 0.1)}

\item{middle_thresh}{the middle threshold used (default = 0.25)}

\item{upper_thresh}{the maximum threshold used (default = 0.5)}

\item{percentile}{time series percentiles to process (mean, 50, 75, 90)}

\item{penalty}{how sensitive is the algorithm, lower is more sensitve (< 0 )}

\item{seg_length}{minimum length of a segment to be evaluated}

\item{frequency}{1 or 3, default is NULL (ignored = automatic)}

\item{reverse}{flip the direction of the processing}

\item{plot}{plot for debugging purposes}
}
\description{
Calculates transition dates on the upward
segments of a PhenoCam time series. This function
should not be run stand-alone. Use phenophases() instead!
The required input is a smoothed PhenoCam data file or data frame.
}
\examples{

\dontrun{
df = download_phenocam(site = "harvard$",
                       vegetation = "DB",
                       roi_id = "1",
                       frequency = 3)

df = utils::read.csv("harvard_DB_0001_1day_v4.csv")
my_dates = transition_dates(df,
                            lower_thresh = 0.1,
                            middle_thresh = 0.25,
                            upper_thresh = 0.5,
                            percentile = 90,
                            reverse = FALSE,
                            plot = FALSE)

dates need to be converted to standard notation using
as.Date(my_dates)
}
}
\keyword{PhenoCam,}
\keyword{dates,}
\keyword{phenology,}
\keyword{series}
\keyword{time}
\keyword{transition}
