\name{run10}
\alias{run10}
\docType{data}
\title{ Cherry Blossom 10 mile run data, 2009 }
\description{
14 variables for all 14974 10 mile participants in the 2009 Cherry Blossom Run.
}
\usage{data(run10)}
\format{
  A data frame with 14974 observations on the following 14 variables.
  \describe{
    \item{\code{place}}{ Finishing position. Separate positions are provided for each gender. }
    \item{\code{time}}{ The total run time. }
    \item{\code{netTime}}{ The run time from the start line to the finish line. }
    \item{\code{pace}}{ The listed pace for each runner. }
    \item{\code{age}}{ Age. }
    \item{\code{gender}}{ Gender. }
    \item{\code{first}}{ First name. }
    \item{\code{last}}{ Last name. }
    \item{\code{city}}{ Hometown city. }
    \item{\code{state}}{ Hometown state. }
    \item{\code{country}}{ Hometown country. }
    \item{\code{div}}{ Running division (age group). }
    \item{\code{divPlace}}{ Division place, also broken up by gender. }
    \item{\code{divTot}}{ Total number of people in the division (again, also split by gender). }
  }
}
\source{
  ~~ \url{http://www.cherryblossom.org/} ~~
}
\references{
  ~~ \url{http://www.openintro.org/} ~~
}
\examples{
data(run10)

#===> men's times <===#
histPlot(run10$time[run10$gender == 'M'])

#===> times by gender <===#
densityPlot(run10$time, run10$gender, key=c('M','F'))
legend('topright', lty=2:1, col=c('red','black'), legend=c('M','F'))
}
\keyword{datasets}
