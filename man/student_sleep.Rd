% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-student_sleep.R
\docType{data}
\name{student_sleep}
\alias{student_sleep}
\title{Sleep for 110 students (simulated)}
\format{
A data frame with 110 observations on the following variable.
\describe{
\item{hours}{Number of hours slept by this student (simulated).}
}
}
\source{
Simulated data.
}
\usage{
student_sleep
}
\description{
A simulated dataset for how much 110 college students each slept in a
single night.
}
\examples{

set.seed(2)
x <- exp(c(
  rnorm(100, log(7.5), 0.15),
  rnorm(10, log(10), 0.196)
))
x <- round(x - mean(x) + 7.42, 2)

identical(x, student_sleep$hours)
}
\keyword{datasets}
