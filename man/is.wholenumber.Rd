\name{is.wholenumber}
\alias{is.wholenumber}
\title{
Test of whole number
}
\description{
Test if a given number is a whole number
}
\usage{
is.wholenumber(x, tol = .Machine$double.eps^0.5)
}
\arguments{
  \item{x}{
a number to test
}
  \item{tol}{
precision to be used
}
}
\value{
returns TRUE or FALSE depending on whether the number is or not a wholenumber}
\references{
This function is described on 'is.integer' help
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
is.wholenumber(4)
is.wholenumber(3.3)
}
