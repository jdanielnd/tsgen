\name{add.price}
\alias{add.price}
\title{
Add price response
}
\description{
Add price response to the series regarding the parameters
}
\usage{
add.price(tser, elast, random.price=FALSE, inf.limit=NULL, sup.limit=NULL, p.vec=NULL)
}
\arguments{
  \item{tser}{
  time series which price response will be added
}
  \item{elast}{
  can be either a number, or a vector. If it's a vector, a loess will be adjusted to it, generating values of seasonality for each observation.
}
  \item{random.price}{
  TRUE or FALSE depending on whether the price should be random, or a loess fitted vector.
}
  \item{inf.limit}{
  inferior limit of price when it's random.
}
  \item{sup.limit}{
  superior limit of price when it's random.
}
  \item{p.vec}{
  vector of prices to be fitted by loess
}
}
\value{
returns the time series with price response
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
set.seed(123)
kp <- c(100,110,140,120,90)
bs <- basic.series(kp, start=c(2008,1))
bss <- add.season(bs)
add.price(bss, -2, random.price=TRUE, 2, 10)
add.price(bss, c(-2,-3,-2,-1), random.price=FALSE, p.vec=c(4,2,5,7,10))
}
