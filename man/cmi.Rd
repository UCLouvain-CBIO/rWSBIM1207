\name{cmi}
\alias{cmi}
\docType{data}


\title{
  Citymapper Mobility Index
}


\description{

  The Citymapper Mobility Index is calculated by comparing trips planned
  in the Citymapper app to a recent typical usage period. Trips planned
  ('Get Me Somewhere' and related) are correlated to trips taken (GO
  mode). Typical usage period is defined as 4 weeks between Jan 6th and
  Feb 2nd, 2020. To better capture typical usage in certain cities we
  are using different periods in Paris (Feb 3rd to March 1st) and Hong
  Kong and Singapore (both Dec 2nd to Dec 22nd). A day is defined as
  midnight to midnight UTC, thus for certain cities may not correspond
  with calendar days. We update the data every day at 7am UTC.

  Our users are public transport users and also use us for walking,
  cycling, and some micromobility and cabs. We are not used for
  driving. We do not track the demographics of our users. We have enough
  data in our published cities to be confident that it represents a real
  change in behaviour. However, it is a sample set of general mobility
  and may not represent the real world exactly.

  Journalists and public interest researchers may use this information
  as long as they attribute it to Citymapper and link to
  Citymapper.com/CMI. All others who wish to use this information,
  please contact us from our website.

  These data were downloaded on the 15 April 2020.

}

\usage{data("cmi")}

\format{

  A tibble with 44 observations on the following 42 variables.
  
  \describe{
    \item{\code{Date}}{a Date}
    \item{\code{Amsterdam}}{a numeric vector}
    \item{\code{Barcelona}}{a numeric vector}
    \item{\code{Berlin}}{a numeric vector}
    \item{\code{Birmingham}}{a numeric vector}
    \item{\code{Boston}}{a numeric vector}
    \item{\code{Brussels}}{a numeric vector}
    \item{\code{Chicago}}{a numeric vector}
    \item{\code{Copenhagen}}{a numeric vector}
    \item{\code{Hamburg}}{a numeric vector}
    \item{\samp{Hong Kong}}{a numeric vector}
    \item{\code{Istanbul}}{a numeric vector}
    \item{\code{Lisbon}}{a numeric vector}
    \item{\code{London}}{a numeric vector}
    \item{\samp{Los Angeles}}{a numeric vector}
    \item{\code{Lyon}}{a numeric vector}
    \item{\code{Madrid}}{a numeric vector}
    \item{\code{Manchester}}{a numeric vector}
    \item{\code{Melbourne}}{a numeric vector}
    \item{\samp{Mexico City}}{a numeric vector}
    \item{\code{Milan}}{a numeric vector}
    \item{\code{Monaco}}{a numeric vector}
    \item{\code{Montréal}}{a numeric vector}
    \item{\code{Moscow}}{a numeric vector}
    \item{\samp{New York City}}{a numeric vector}
    \item{\code{Paris}}{a numeric vector}
    \item{\code{Philadelphia}}{a numeric vector}
    \item{\samp{Rhine-Ruhr}}{a numeric vector}
    \item{\code{Rome}}{a numeric vector}
    \item{\samp{San Francisco}}{a numeric vector}
    \item{\code{Seattle}}{a numeric vector}
    \item{\code{Seoul}}{a numeric vector}
    \item{\code{Singapore}}{a numeric vector}
    \item{\samp{St. Petersburg}}{a numeric vector}
    \item{\code{Stockholm}}{a numeric vector}
    \item{\code{Sydney}}{a numeric vector}
    \item{\samp{São Paulo}}{a numeric vector}
    \item{\code{Tokyo}}{a numeric vector}
    \item{\code{Toronto}}{a numeric vector}
    \item{\code{Vancouver}}{a numeric vector}
    \item{\code{Vienna}}{a numeric vector}
    \item{\samp{Washington DC}}{a numeric vector}
  }
}



\source{
  Citymapper.com/CMI
}

\examples{
library(tibble)
data(cmi)
}

\keyword{datasets}
