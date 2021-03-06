% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util_binarize.R
\name{util_binarize}
\alias{util_binarize}
\title{Binarize continuous raster values}
\usage{
util_binarize(x, breaks)
}
\arguments{
\item{x}{Raster* object}

\item{breaks}{Vector with one or more break percentages}
}
\value{
RasterLayer / RasterBrick
}
\description{
Classify continuous raster values into binary map cells based upon given
break(\code{s}).
}
\details{
Breaks are considered to be habitat percentages (\code{p}). If more than
one percentage is given multiple layers are written in the same brick.
}
\examples{
rndMap <- nlmr::nlm_random(10, 10)
breaks <- c(0.3, 0.5)
(rnd_bin <- util_binarize(rndMap, breaks))

}
