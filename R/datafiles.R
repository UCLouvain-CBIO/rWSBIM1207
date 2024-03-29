##' @export
beers.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "beers.csv")

##' @export
beers2.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "beers2.csv")

##' @export
clinical1.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "clinical1.csv")

##' @export
expression.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "expression.csv")

##' @export
expressions.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "expression_A.*.csv")

##' @export
interroA.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "interroA.csv")

##' @export
interroB.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "interroB.csv")

##' @export
interro2.rds <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "interro2.rds")

##' @export
kem.tsv <- function() {
    c(dir(system.file("extdata", package = "rWSBIM1207"),
          full.names = TRUE, pattern = "kem_counts\\.tsv"),
      dir(system.file("extdata", package = "rWSBIM1207"),
          full.names = TRUE, pattern = "kem_annot\\.tsv"))
}


##' @export
kem2.tsv <- function() {
    c(dir(system.file("extdata", package = "rWSBIM1207"),
          full.names = TRUE, pattern = "kem_counts2\\.tsv"),
      dir(system.file("extdata", package = "rWSBIM1207"),
          full.names = TRUE, pattern = "kem_annot\\.tsv"))
}

##' @export
kem3.tsv <- function() {
    c(dir(system.file("extdata", package = "rWSBIM1207"),
          full.names = TRUE, pattern = "kem_counts3a\\.tsv"),
      dir(system.file("extdata", package = "rWSBIM1207"),
          full.names = TRUE, pattern = "kem_counts3b\\.tsv"),
      dir(system.file("extdata", package = "rWSBIM1207"),
          full.names = TRUE, pattern = "kem_annot\\.tsv"))
}

##' @export
covid19_cases.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "covid19-cases\\.csv")

##' @export
covid19_deaths.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "covid19-deaths\\.csv")

##' @export
covid19_recovered.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "covid19-recovered\\.csv")

##' @export
apple_mobility.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "applemobilitytrends-2021-08-18.csv")

##' @export
road_accidents_be_2022.rds <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "TF_ACCIDENTS_VICTIMS_2022.rds")

##' @export
road_accidents_be_meta.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "TF_ACCIDENTS_VICTIMS_META.csv")


##' @export
population_be.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "population_BE_")
