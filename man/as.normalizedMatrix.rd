\name{as.normalizedMatrix}
\alias{as.normalizedMatrix}
\title{
Convert a normal matrix to a normalizedMatrix object
}
\description{
Convert a normal matrix to a normalizedMatrix object
}
\usage{
as.normalizedMatrix(mat, k_upstream = 0, k_downstream = 0, k_target = 0,
    extend, signal_name = "signals", target_name = "targets",
    background = NA, smooth = FALSE, smooth_fun = default_smooth_fun,
    keep = c(0, 1), trim = NULL)
}
\arguments{

  \item{mat}{a matrix generated by other software.}
  \item{k_upstream}{number of windows in the upstream.}
  \item{k_downstream}{number of windows in the downstream.}
  \item{k_target}{number of windows in the target.}
  \item{extend}{extension to the target. The length should be 1 (if one of \code{k_upstream} or \code{k_downstream} is zero). or 2 (if both of \code{k_upstream} and \code{k_downstream} are non-zero).}
  \item{signal_name}{the name of signal regions. It is only used for printing the object.}
  \item{target_name}{the name of the target names. It is only used for printing the object.}
  \item{background}{the background value in the matrix.}
  \item{smooth}{whether apply smoothing on rows in the matrix. }
  \item{smooth_fun}{the smoothing function that is applied to each row in the matrix. This self-defined function accepts a numeric vector (may contain \code{NA} values) and returns a vector with same length. If the smoothing is failed, the function should call \code{\link[base]{stop}} to throw errors so that \code{\link{normalizeToMatrix}} can catch how many rows are failed in smoothing.  See the default \code{\link{default_smooth_fun}} for example.}
  \item{keep}{percentiles in the normalized matrix to keep. The value is a vector of two percent values. Values less than the first percentile is replaces with the first pencentile and values larger than the second percentile is replaced with the second percentile.}
  \item{trim}{deprecated, please use \code{keep} instead.}

}
\details{
If users use the matrix from other software, they can use this function to convert it to the \code{normalizedMatrix} object
and visualize it afterwards.
}
\value{
A \code{normalizedMatrix} object.
}
\author{
z.gu@dkfz.de
}
\examples{
# There is no example
NULL
}