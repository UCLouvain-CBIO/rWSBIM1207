\name{beers}
\alias{beers}
\alias{beers.csv}
\alias{beers2.csv}

\docType{data}

\title{
  Beer consumption data
}

\description{

  A small data frame describing the beer consumption and and
  demographics of 48 people.

}


\usage{
data("beers")
}


\format{
  A data frame with 48 observations on the following 8 variables.
  \describe{
    \item{\code{Record_ID}}{a numeric vector}
    \item{\code{Work}}{a factor with levels \code{Employed} \code{Unemployed}}
    \item{\code{Consumption}}{a numeric vector}
    \item{\code{Gender}}{a factor with levels \code{Female} \code{Male}}
    \item{\code{Age}}{a numeric vector}
    \item{\code{Day}}{a numeric vector}
    \item{\code{Month}}{a numeric vector}
    \item{\code{Year}}{a numeric vector}
  }
}

\examples{
data(beers)
beers
str(beers)

f <- beers.csv()
basename(f)
beers2 <- read.csv(f, sep = ";")
beers2

identical(beers, beers2)
}

\keyword{datasets}
