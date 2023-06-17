\name{road_accidents}
\alias{road_accidents_be_2022.rds}
\alias{road_accidents_be_meta.csv}

\docType{data}

\title{Road accidents data}

\description{

  Nombre de tués, blessés graves, blessés légers et victimes indemnes
  d'accidents de la route, par classe d'âges, genre d'usager, sexe et
  diverses caractéristiques de l’accident

  These are publicly available data downloaded on 16 June 2023 from the
  Belgian gouvernment open data page. For more details on these data,
  see
  https://statbel.fgov.be/fr/themes/mobilite/circulation/accidents-de-la-circulation

}


\usage{
road_accidents_be_2022.rds()
road_accidents_be_meta.csv()
}


\examples{
readRDS(road_accidents_be_2022.rds())
read.csv(road_accidents_be_meta.csv())
}

\keyword{datasets}
