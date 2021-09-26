\name{GSE96870}
\alias{GSE96870}
\alias{GSE96870_intro}
\alias{GSE96870_intro_ranges}


\docType{data}

\title{
  RNA-seq data from Blackmore et al. 2017
}

\description{

  Dataset from \emph{The effect of upper-respiratory infection on
  transcriptomic changes in the CNS} by Blackmore et al. (2017)
  (https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5544260/) used as data
  for the Bioconductor intro and RNA-seq lessons and WSBIM1207
  courses. The two variables are of class SummarizedExperiment.

}


\usage{
data("GSE96870_intro")
data("GSE96870_intro_ranges")
}


\details{

  For details on how the data was prepared, see
  \url{https://github.com/Bioconductor/bioconductor-teaching/tree/master/data/GSE96870}.

}

\examples{
data("GSE96870_intro")
GSE96870_intro
rowData(GSE96870_intro)

data("GSE96870_intro_ranges")
GSE96870_intro_ranges
rowRanges(GSE96870_intro_ranges)
}
