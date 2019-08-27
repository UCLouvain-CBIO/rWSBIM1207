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
