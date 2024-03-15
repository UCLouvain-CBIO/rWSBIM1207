##' @title TidyTuesday's English Education Data
##'
##' @description
##'
##' These two files describe the 'Educational attainment of young
##' people in English towns' from the the [UK Office for National
##' Statistics](https://www.ons.gov.uk/). It was explored in the July
##' 2023 article
##' ["Why do children and young people in smaller towns do better academically than those in larger towns?"](https://www.ons.gov.uk/peoplepopulationandcommunity/educationandchildcare/articles/whydochildrenandyoungpeopleinsmallertownsdobetteracademicallythanthoseinlargertowns/2023-07-25).
##'
##' Two files are available:
##'
##' - `english_education.csv` was prepared as part of the [Tidy
##'   Tuesday](https://github.com/rfordatascience/tidytuesday) series
##'   on [Educational attainment of young people in English
##'   towns](https://github.com/rfordatascience/tidytuesday/blob/master/data/2024/2024-01-23/readme.md)
##'   (2024-01-23). The page also describes the variables.
##'
##' - `edu_income_eprivation_and_educational_attainment.csv` was
##'   downloaded from the UK Office for National Statistics and
##'   converted from xls to csv. The variables in this table are also
##'   described on the page linked above.
##'
##' @references
##' - ["Why do children and young people in smaller towns do better academically than those in larger towns?"](https://www.ons.gov.uk/peoplepopulationandcommunity/educationandchildcare/articles/whydochildrenandyoungpeopleinsmallertownsdobetteracademicallythanthoseinlargertowns/2023-07-25).
##' - Tidy Tuesday data from 2024-01-23: https://github.com/rfordatascience/tidytuesday/blob/master/data/2024/2024-01-23/readme.md
##'
##' @md
##'
##' @aliases english_education_files english_education
##'
##' @return `character(2)` with file names.
##'
##' @author Laurent Gatto
##'
##' @export
##'
##' @examples
##'
##' english_education_files()
english_education_files <- function() {
    fl <- dir(system.file("extdata", package = "rWSBIM1207"),
              full.names = TRUE, pattern = "edu_income_eprivation_and_educational_attainment.csv")
    url <- "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-01-23/english_education.csv"
    c(fl, url)
}
