\name{basic.series}
\alias{basic.series}
\title{
Create basic time series
}
\description{
Create a basic time series regarding the parameters
}
\usage{
basic.series(x, n=4, loess.span=0.6, start, freq=12)
}
\arguments{
  \item{x}{
key points of the series to be adjusted
}
  \item{n}{
number of periods of the series
}
  \item{loess.span}{
span of the loess adjust
}
  \item{start}{
start date of the time series
}
  \item{freq}{
frequency of the time series
}
}
\value{
returns the generated time series
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
set.seed(123)
kp <- c(100,110,140,120,90)
bs <- basic.series(kp, start=c(2008,1))
bs <- basic.series(kp, n=2, loess.span=0.4, start=c(2010,1))
}
