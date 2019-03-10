\name{tcga}
\alias{tcga}
\alias{expression}
\alias{clinical1}
\alias{clinical2}
\alias{clinical_table_ex1}
\alias{clinical1.csv}
\alias{expression.csv}

\docType{data}

\title{
  TCGA data
}

\description{
  The Cancer Genome Atlas (TCGA) is a collaboration between the National 
  Cancer Institute (NCI) and the National Human Genome Research Institute 
  (NHGRI) that has generated multi-omics analyses (genomic, transcriptomic,
  proteomic and epigenetic) in 33 types of cancer. 
  RNAseq and clinical data analysed here come from LUAD (lung adenocarcinoma) 
  tumors and corresponding patients. 
  TCGA clinical and RNAseq expression data extracted from the
  \code{curatedTCGAData} package. See \code{inst/scripts/tcga.R} for
  details.

}

\usage{
data("expression")
data("clinical1")
data("clinical2")
data("clinical_table_ex1")
}

\format{

  \code{expression}: RNA expression data frame with 570 observations on
  the following 8 variables.

  \describe{
    \item{\code{sampleID}}{a factor}
    \item{\code{patient}}{a character vector}
    \item{\code{type}}{a character vector}
    \item{\code{A1BG}}{a numeric vector}
    \item{\code{A1CF}}{a numeric vector}
    \item{\code{A2BP1}}{a numeric vector}
    \item{\code{A2LD1}}{a numeric vector}
    \item{\code{A2ML1}}{a numeric vector}
  }

  \code{clinical1}: clinical data for 516 observations on the following
  15 variables.

  \describe{
    \item{\code{patientID}}{a character vector}
    \item{\code{tumor_tissue_site}}{a character vector}
    \item{\code{gender}}{a character vector}
    \item{\code{age_at_diagnosis}}{a numeric vector}
    \item{\code{vital_status}}{a numeric vector}
    \item{\code{days_to_death}}{a numeric vector}
    \item{\code{days_to_last_followup}}{a numeric vector}
    \item{\code{pathologic_stage}}{a character vector}
    \item{\code{pathology_T_stage}}{a character vector}
    \item{\code{pathology_N_stage}}{a character vector}
    \item{\code{pathology_M_stage}}{a character vector}
    \item{\code{smoking_history}}{a character vector}
    \item{\code{number_pack_years_smoked}}{a numeric vector}
    \item{\code{year_of_tobacco_smoking_onset}}{a numeric vector}
    \item{\code{stopped_smoking_year}}{a numeric vector}
  }

  \code{clinical2}: small clinical data with 516 observations on the
  following 3 variables.

  \describe{
    \item{\code{patientID}}{a character vector}
    \item{\code{gender}}{a character vector}
    \item{\code{years_at_diagnosis}}{a numeric vector}
  }

  A clinical summary data with 2 observations on the following 3
  variables.

  \describe{
    \item{\code{gender}}{a character vector}
    \item{\samp{current smoker}}{a numeric vector}
    \item{\samp{lifelong non-smoker}}{a numeric vector}
  }


  In addition, the \code{clinical1.csv} and \code{expression.csv}
  function return the paths to these respective comma-separated value
  spreadsheets. The \code{expressions.csv} function returns the path to
  the expression data split by gene.

}


\examples{
data(expression)
data(clinical1)
data(clinical2)
data(clinical_table_ex1)
}

\keyword{datasets}
