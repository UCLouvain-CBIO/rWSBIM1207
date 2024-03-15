#' rWSBIM1207: Companion package for WSBIM1207 course
#'
#' This package is used to distribute data and general documentation about the
#' WSBIM1207 course, and to make course administration easier. For details about
#' the course and the course material, see
#' [http://bit.ly/WSBIM1207](http://bit.ly/WSBIM1207).
#'
#' @section rWSBIM1207 datasets:
#'
#' The following data sets are available. Consult the respective manual pages
#' for further details.
#'
#' - tcga clinical and RNA expression data: see `?tcga`.
#' - beer consumption data: see `?beers`.
#' - tables to illustrate joins: see `jdf`.
#'
#' @importFrom utils packageVersion
#' @import dplyr tibble
#' @md
#' @name rWSBIM1207
"_PACKAGE"

#' @export
#' @name rWSBIM1207
#' @examples
#' ## check the package version that is currently installed
#' rWSBIM1207version()
rWSBIM1207version <- function()
    utils::packageVersion("rWSBIM1207")
