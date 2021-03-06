% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_phenocam.r
\name{download_phenocam}
\alias{download_phenocam}
\title{Function to download and post-process PhenoCam time series}
\usage{
download_phenocam(site = "bartlett", vegetation = NULL, frequency = "3",
  roi_id = NULL, outlier_detection = TRUE, smooth = TRUE,
  daymet = FALSE, trim_daymet = TRUE, phenophase = FALSE,
  out_dir = tempdir())
}
\arguments{
\item{site}{the site name, as mentioned on the PhenoCam web page expressed
as a regular expression ("harvard$" == exact match)}

\item{vegetation}{vegeation type (DB, EN, ... default = ALL)}

\item{frequency}{frequency of the time series product (1,3, "raw")}

\item{roi_id}{the id of the ROI to download (default = ALL)}

\item{outlier_detection}{TRUE or FALSE, detect outliers}

\item{smooth}{smooth data (TRUE / FALSE, default is TRUE)}

\item{daymet}{TRUE or FALSE, merges the daymet data}

\item{trim_daymet}{TRUE or FALSE, trims data to match PhenoCam data}

\item{phenophase}{TRUE or FALSE, calculate transition dates}

\item{out_dir}{output directory where to store downloaded data 
(default = tempdir())}
}
\description{
Function to download and post-process PhenoCam time series
}
\examples{

\dontrun{
# download the first ROI time series for the Harvard PhenoCam site
# and an aggregation frequency of 3-days.
download_phenocam(site = "harvard",
                  vegetation = "DB",
                  roi_id = 1,
                  frequency = 3)

}
}
\keyword{Daymet,}
\keyword{PhenoCam,}
\keyword{climate}
\keyword{data,}
\keyword{modelling}
