\name{openintro-package}
\alias{openintro-package}
\alias{openintro}
\docType{package}
\title{
Open Intro book project supplement
}
\description{
This package is intended as a supplement to the open source book being produced through Open Intro (\url{http://www.openintro.org/}). Included here are data sets used in the book along with functions used to create many of the book figures.
}
\details{
\tabular{ll}{
Package: \tab openintro\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2009-12-13\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
\code{\link{boxPlot}}, \code{\link{densityPlot}}, \code{\link{dotPlot}}, \code{\link{histPlot}}, \code{\link{cars}}, \code{\link{marioKart}}, \code{\link{possum}}, \code{\link{run10}}
}
\author{
David M Diez and Christopher D Barr

Maintainer: DM Diez <david.m.diez@gmail.com>
}
\keyword{ package }
\examples{

#===> boxPlot <===#
data(run10)
par(mfrow=1:2)
boxPlot(run10$time)
boxplot(run10$time)

#===> histPlot, example 1 <===#
data(run10)
par(mfrow=c(2,2))
histPlot(run10$time)
histPlot(run10$time[run10$gender=='M'], probability=TRUE, xlim=c(30, 180), ylim=c(0, 0.025), hollow=TRUE)
histPlot(run10$time[run10$gender=='F'], probability=TRUE, add=TRUE, hollow=TRUE, lty=3, border='red')
legend('topleft', col=c('black', 'red'), lty=2:3, legend=c('M','F'))
histPlot(run10$time, col=fadeColor('yellow', '33'), border='darkblue', probability=TRUE, breaks=30, lwd=3)
histPlot(run10$time, probability=TRUE, breaks=c(c(40, 50, 60, 65, 70, 75, 80, seq(82.5, 120, 2.5), 125, 130, 135, 140, 150, 160, 170)), col=fadeColor('darkgoldenrod4', '33'))

#===> histPlot, example 2 <===#
data(cars)
par(mfrow=c(1,1))
histPlot(cars$price[cars$type=='small'], probability=TRUE, hollow=TRUE, xlim=c(0,50))
histPlot(cars$price[cars$type=='midsize'], probability=TRUE, hollow=TRUE, add=TRUE, border='red', lty=3)
histPlot(cars$price[cars$type=='large'], probability=TRUE, hollow=TRUE, add=TRUE, border='blue', lty=4)
legend('topright', lty=2:4, col=c('black', 'red', 'blue'), legend=c('small', 'midsize', 'large'))

#===> densityPlot <===#
data(tips)
par(mfrow=c(1,1))
densityPlot(tips$tip, tips$day)
legend('topright', col=c('black','red'), lty=1:2, legend=c('Tuesday', 'Friday'))

#===> identifying reasons for outliers <===#
data(marioKart)
par(mfrow=c(1,1))
boxPlot(marioKart$totalPr, marioKart$cond, horiz=TRUE)
these <- which(marioKart$totalPr > 80)
# see the data collection criteria for
# why these observations do not belong.
lines(rep(marioKart$totalPr[these[1]], 2), c(2.4, 2))
text(marioKart$totalPr[these[1]], 2.4, marioKart$title[these[1]], pos=3, cex=0.5)
lines(rep(marioKart$totalPr[these[2]], 2), c(1.6, 2))
text(marioKart$totalPr[these[2]], 1.6, marioKart$title[these[2]], pos=1, cex=0.5)

#===> compare plotting methods <===#
data(cars)
par(mfrow=c(1,1))
histPlot(cars$price, ylim=c(0, 0.1), axes=FALSE, ylab='', probability=TRUE, xlab='price')
axis(1)
boxPlot(cars$price, width=0.03, horiz=TRUE, add=0.067, axes=FALSE)
dotPlot(cars$price, at=0.095, add=TRUE)
densityPlot(cars$price, add=TRUE)
}
