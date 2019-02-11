##' @rdname beers
##' @export
beers.csv <- function()
    dir(system.file("extdata", package = "rWSBIM1207"),
        full.names = TRUE, pattern = "beers.csv")