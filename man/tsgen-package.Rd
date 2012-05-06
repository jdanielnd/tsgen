\name{tsgen-package}
\alias{tsgen-package}
\alias{tsgen}
\docType{package}
\title{
Time series generator
}
\description{
Provide tools to generate time series
}
\details{
\tabular{ll}{
Package: \tab tsgen\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-05-05\cr
License: \tab MIT\cr
}
~~ An overview of how to use the package, including the most important ~~
~~ functions ~~
}
\author{
Claudio Duarte, Joao Daniel

Maintainer: Joao Daniel <jdanielnd@gmail.com>
~~ The author and/or maintainer of the package ~~
}
\examples{
set.seed(123)
kp <- c(100,110,140,120,90)
bs <- basic.series(kp, start=c(2008,1))
bss <- add.season(bs)
add.price(bss, -2, random.price=TRUE, 2, 10)
}
