\name{covid19}
\alias{covid19}
\alias{covid19_cases.csv}
\alias{covid19_deaths.csv}
\alias{covid19_recovered.csv}

\docType{data}

\title{
   Coronavirus (COVID-19) Cases
}

\description{
  
  These data were downloaded from Novel Coronavirus COVID-19 (2019-nCoV)
  Data Repository by Johns Hopkins CSSE
  (https://github.com/CSSEGISandData/COVID-19):
  
  This is the data repository for the 2019 Novel Coronavirus Visual
  Dashboard operated by the Johns Hopkins University Center for Systems
  Science and Engineering (JHU CSSE). Also, Supported by ESRI Living
  Atlas Team and the Johns Hopkins University Applied Physics Lab (JHU
  APL).

  The `covid19_cases.csv()`, `covid19_deaths.csv()` and
  `covid19_recoevered.csv()` functions return the path to a
  comma-separated file containing confirmed cases, deaths and recovered
  cases over time for a certain number of coutries/regions. See example
  below for details.
}


\usage{
covid19_cases.csv()
covid19_deaths.csv()
covid19_recovered.csv()
}


\examples{
cv <- readr::read_csv(covid19_cases.csv())
## dates (fomat: month/day/year)
names(cv)[-(1:4)]
## Countries/Regions
unique(cv[[2]])
## Provice/States
unique(cv[[1]])
}

\keyword{datasets}
