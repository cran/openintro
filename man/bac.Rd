% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-bac.R
\docType{data}
\name{bac}
\alias{bac}
\title{Beer and blood alcohol content}
\format{
A data frame with 16 observations on the following 3 variables.
\describe{
\item{student}{a numeric vector}
\item{beers}{a numeric vector}
\item{bac}{a numeric vector}
}
}
\source{
J. Malkevitch and L.M. Lesser. For All Practical Purposes:
Mathematical Literacy in Today's World. WH Freeman & Co, 2008.
}
\usage{
bac
}
\description{
Here we examine data from sixteen student volunteers at Ohio State
University who each drank a randomly assigned number of cans of beer.
}
\examples{

library(ggplot2)

ggplot(bac, aes(x = beers, y = bac)) +
  geom_point() +
  labs(x = "Number of beers", y = "Blood alcohol content")
}
\keyword{datasets}
