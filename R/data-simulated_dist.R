#' Simulated datasets, not necessarily drawn from a normal distribution.
#'
#' Data were simulated in R, and some of the simulations do not represent data
#' from actual normal distributions.
#'
#'
#' @name simulated_dist
#' @docType data
#' @format The format is: List of 4 $ d1: dataset of 100 observations.  $ d2:
#' dataset of 50 observations.  $ d3: num dataset of 500 observations.  $ d4:
#' dataset of 15 observations.  $ d5: num dataset of 25 observations.  $ d6:
#' dataset of 50 observations.
#' @keywords datasets
#' @examples
#'
#' data(simulated_dist)
#' lapply(simulated_dist, qqnorm)
"simulated_dist"
