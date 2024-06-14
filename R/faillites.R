##' @title  Evolution mensuelle des faillites par NACE
##'
##' @description
##'
##' Ce jeu de données reprednt l'évolution mensuelle des faillites par
##' NACE - 15 jours de 2005 à 2023, telles que distribuées par
##' statbel, l'office belge de statistique.
##'
##' @section Traitement des données:
##'
##' - Les données ont été téléchargées de
##'   [https://statbel.fgov.be/fr/open-data/evolution-mensuelle-des-faillites-par-nace](https://statbel.fgov.be/fr/open-data/evolution-mensuelle-des-faillites-par-nace).
##'
##' - Un sous-échantillon de 11544 observation a été sélectionné, de
##'   telle manière a garder les entreprises de grandes tailles. Voir
##'   le `scripts/faillites.R`.
##'
##' @section Ce package re-distribute deux fichiers:
##'
##' - `TF_BANKRUPTCIES_subset.txt.zip`: échantillon des données sous
##'   format compressé, les valeurs étant séparées pas le caractère
##'   `|` (format identique aux données complètes distribuées par
##'   statbel).
##'
##' - `Method_BANKRUPTCIES.xlsx`: les métadonnées décrivant les
##'   variables, en format xlsx, tel que distribué par statbel.
##'
##'
##' @md
##'
##' @aliases faillites_be faillites
##'
##' @export
##'
##' @return `character(2)` with file names.
##'
##' @examples
##'
##' faillites_be()
faillites_be <- function()
    c(dir(system.file("extdata", package = "rWSBIM1207"),
          full.names = TRUE, pattern = "TF_BANKRUPTCIES_subset.txt.zip"),
      dir(system.file("extdata", package = "rWSBIM1207"),
          full.names = TRUE, pattern = "Method_BANKRUPTCIES.xlsx"))
