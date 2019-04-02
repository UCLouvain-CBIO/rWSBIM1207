\name{kem}
\alias{kem}
\alias{kem_count}
\alias{kem_annot}
\alias{kem.tsv}

\docType{data}

\title{
  KEM RNA-Seq data
}


\description{
  This data is composed of two files, namely \code{kem_counts.tsv},
  containing the counts data and the annotation file
  \code{kem_annot.tsv} containing the annotations the 18 KEM
  samples. Both files are encoded as tab-separtated sheets and can be
  found with the \code{kem.tsv()} function.

  Credit: the data have been prduced by Mr Kevin Missault.

}


\format{
  
  The RNA-Seq count data for 13 ENSEMBL transcripts (ref) and 18 KEM
  samples is encoded as:
  
  \describe{
    \item{\code{ref}}{a character vector}
    \item{\samp{KEM182-01}}{a numeric vector}
    \item{\samp{KEM182-02}}{a numeric vector}
    \item{\samp{KEM182-03}}{a numeric vector}
    \item{\samp{KEM182-04}}{a numeric vector}
    \item{\samp{KEM182-05}}{a numeric vector}
    \item{\samp{KEM182-06}}{a numeric vector}
    \item{\samp{KEM182-07}}{a numeric vector}
    \item{\samp{KEM182-08}}{a numeric vector}
    \item{\samp{KEM182-09}}{a numeric vector}
    \item{\samp{KEM182-10}}{a numeric vector}
    \item{\samp{KEM182-11}}{a numeric vector}
    \item{\samp{KEM182-12}}{a numeric vector}
    \item{\samp{KEM182-13}}{a numeric vector}
    \item{\samp{KEM182-14}}{a numeric vector}
    \item{\samp{KEM182-15}}{a numeric vector}
    \item{\samp{KEM182-16}}{a numeric vector}
    \item{\samp{KEM182-17}}{a numeric vector}
    \item{\samp{KEM182-18}}{a numeric vector}
  }

  The annotation contains the following varriables for the 18
  observations:
  
  \describe{
    \item{\code{sample_id}}{a character vector}
    \item{\code{jurkat}}{a character vector}
    \item{\code{cell_type}}{a character vector}
    \item{\code{treatment}}{a character vector}
  }  
}


\examples{
kem.tsv()
}

\keyword{datasets}
