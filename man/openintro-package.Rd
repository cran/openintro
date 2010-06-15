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
\code{\link{boxPlot}}, \code{\link{buildAxis}}, \code{\link{densityPlot}}, \code{\link{dotPlot}}, \code{\link{histPlot}}, \code{\link{normTail}}, \code{\link{cars}}, \code{\link{marioKart}}, \code{\link{possum}}, \code{\link{run10}}, \code{\link{satGPA}}, \code{\link{textbooks}}
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

#===> controlling the number of axis labels <===#
#     specify the number of labels
data(textbooks)
x <- textbooks$diff
par(mfrow=c(3,1))
histPlot(x, axes=FALSE)
buildAxis(1, x, n=4, nMin=4, nMax=4)
histPlot(x, axes=FALSE)
buildAxis(1, x, n=5, nMin=5, nMax=5)
histPlot(x, axes=FALSE)
# no decent axis is found for this data with exactly six labels
# no min or max specified, only a target number of labels:
buildAxis(1, x, n=6)

#===> creating normal plots with tails <===#
par(mfrow=c(2,3), mar=c(3,3,1,1), mgp=c(1.7, 0.7, 0))
normTail(L=-2)
normTail(U=1, xLab='symbol', cex.axis=0.7)
normTail(M=c(-2,-0.3), col='#22558833')
normTail(5, 13, L=-5, M=c(0,3), U=12, xAxisIncr=2)
normTail(102, 4, xlim=c(97,110), M=c(100,103))
normTail(-10.0, 5.192, M=c(-5,2), digits=1, xAxisIncr=2)
}
