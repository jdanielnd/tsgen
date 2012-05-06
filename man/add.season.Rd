\name{add.season}
\alias{add.season}
\title{
Add seasonality
}
\description{
Add seasonality to the series regarding the parameters
}
\usage{
add.season(tser, s.mean=1, s.sd=0.1, add=FALSE)
}
\arguments{
  \item{tser}{
  time series which seasonality will be added
}
  \item{s.mean}{
  mean of the seasonality. If it's not additive, i.e., it's multiplicative, it's recommended to be 1.
}
  \item{s.sd}{
  standard deviation of seasonality.
}
  \item{add}{
  TRUE or FALSE depending on whether the seasonality is additive or not. If it's not additive, it will be multiplicative.
}
}
\value{
returns the time series with seasonality
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
set.seed(123)
kp <- c(100,110,140,120,90)
bs <- basic.series(kp, start=c(2008,1))
add.season(bs)
add.season(bs, s.sd=0.3)
add.season(bs, s.mean=0,s.sd=10,add=TRUE)
}
