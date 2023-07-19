## Data downloaded from the Belgian statbel.fgov.be page describing
## the population density on 2023-07-18.
##
## https://statbel.fgov.be/fr/themes/population/structure-de-la-population/densite-de-la-population#figures

library(readxl)
library(tidyverse)

## sheet names
sheets <- readxl::excel_sheets("../extdata/Population_par_commune.xlsx")
years <- substring(sheets, nchar(sheets) - 3, nchar(sheets))
filenames <- paste0("../extdata/population_BE_", years, ".csv")

pop <- lapply(seq_along(sheets),
              function(i) {
                  sheet <- sheets[i]
                  ## assumes that missing values only in non-records
                  pop <- read_xlsx("../extdata/Population_par_commune.xlsx", skip = 1, sheet = i) |>
                      na.omit() |>
                      janitor::clean_names()
                  ## fix ’
                  pop[[2]] <- gsub("’", "'", pop[[2]])
                  pop$annee <- years[i]
                  write_csv(pop, file = filenames[i])
                  pop
              })

## ## testing
## x <- read_csv(list.files("../extdata", pattern = "_BE_", full.names = TRUE))

## lieux <- x[[2]][1:4]

## x |>
##     filter(lieu_de_residence %in% lieux) |>
##     filter(annee > 1990) |>
##     ggplot(aes(x = annee, y = total,
##                colour = lieu_de_residence)) +
##     geom_line() +
##     geom_point()

## x |>
##     pivot_longer(names_to = "variable",
##                  values_to = "value",
##                  3:5) |>
##     filter(lieu_de_residence %in% lieux) |>
##     filter(annee > 1990) |>
##     ggplot(aes(x = annee, y = value,
##                colour = variable)) +
##     geom_line() +
##     geom_point() +
##     facet_wrap(~ lieu_de_residence, scale = "free_y")
