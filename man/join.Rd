\name{jdf}
\alias{jdf}
\alias{jdf1}
\alias{jdf2}
\alias{jdf3}
\alias{jdf4}
\alias{jdf5}
\alias{jdf6}
\alias{jdf7}

\docType{data}

\title{
  Data illustrating join operations
}


\description{
  A set of tibbles contain information about genes and their protein
  products used to illustrate join operations.
}


\usage{
data("jdf")
}


\source{
  These data are based on feature varaibles from the
  \code{hyperLOPIT2015} data available in the \code{pRolocdata}
  package. The script to generate, \code{join.R}, is available in the
  \code{scipts} package directory.

}

\examples{
data(jdf)
dplyr::full_join(jdf1, jdf2)
dplyr::left_join(jdf6, jdf7)
}


\keyword{datasets}
