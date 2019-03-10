\name{peptides}
\alias{peptides}
\docType{data}

\title{
  A vector of peptide sequences
}


\description{
  A character vector containing peptide sequences.
}

\usage{data("peptides")}

 
\source{

  The peptides were extraced from the `hyperLOPIT2015ms3r1psm` object in
  the `pRolocdata` package using
  `unique(as.character(fData(hyperLOPIT2015ms3r1psm)$Sequence))`.

}


\examples{
data(peptides)
head(peptides)
}
\keyword{datasets}
