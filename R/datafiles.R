##' @rdname beers
##' @export
beers.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "beers.csv")


##' @rdname tcga
##' @export
clinical1.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "clinical1.csv")

##' @rdname tcga
##' @export
expression.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "expression.csv")

##' @rdname tcga
##' @export
expressions.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "expression_A.*.csv")

##' @rdname interro
##' @export
interroA.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "interroA.csv")

##' @rdname interro
##' @export
interroB.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "interroB.csv")
