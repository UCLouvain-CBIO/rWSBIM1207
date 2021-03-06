\name{interro}
\alias{interro}
\alias{interroA}
\alias{interroB}
\alias{interroC}
\alias{interroL}
\alias{interroA.csv}
\alias{interroB.csv}
\alias{interro2.rds}

\docType{data}

\title{
  Practice datasets
}


\description{

  `interroA.csv` and `interroB.csv` are two comme-separated spreadsheets
  that provide made-up data about student test restults.

  A data frame with 100 observations on the following 8 variables.

  \describe{
    \item{\code{id}}{student identifer.}
    \item{\code{height}}{student heights (in cm).}
    \item{\code{gender}}{\code{F} or \code{M}.}
    \item{\code{X}}{a vector of random data drawn from N(0, 1).}
    \item{\code{interro1}}{a numeric vector with test scores.}
    \item{\code{interro2}}{a numeric vector with test scores.}
    \item{\code{interro3}}{a numeric vector with test scores.}
    \item{\code{interro4}}{a numeric vector with test scores.}
  }

  The `interroC` data contains results for results for 3 new tests for
  15 students, including a subset of students in `interroA`.

  `interroL` is a long format containing all results from `interroA` and
  `interroB`.

}

\examples{
f <- interroA.csv()
interroA <- read.csv(f)
head(interroA)

f2 <- interro2.rds()
readRDS(f2)
}

\keyword{datasets}
