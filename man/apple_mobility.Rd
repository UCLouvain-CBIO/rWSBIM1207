\name{apple_mobility}
\alias{apple_mobility}
\alias{apple_mobility.csv}
\docType{data}


\title{
  Apple Mobility Data
}


\description{

  Apple mobility data, downloaded from
  \url{https://www.apple.com/covid19/mobility} on the 18 August 2021.

  The following description has been taken from the Apple Mobility
  Trends Reports page:

  The CSV file and charts on this site show a relative
  volume of directions requests per country/region, sub-region or city
  compared to a baseline volume on January 13th, 2020. We define our day
  as midnight-to-midnight, Pacific time. Cities are defined as the
  greater metropolitan area and their geographic boundaries remain
  constant across the data set. In many countries/regions, sub-regions,
  and cities, relative volume has increased since January 13th,
  consistent with normal, seasonal usage of Apple Maps. Day of week
  effects are important to normalize as you use this data. Data that is
  sent from users’ devices to the Maps service is associated with
  random, rotating identifiers so Apple doesn’t have a profile of
  individual movements and searches. Apple Maps has no demographic
  information about our users, so we can’t make any statements about the
  representativeness of usage against the overall population.

}

\usage{
apple_mobility.csv()
}

\source{
  \url{https://www.apple.com/covid19/mobility}
}

\examples{
apple_mobility.csv()
read.csv(apple_mobility.csv())
}

\keyword{datasets}
