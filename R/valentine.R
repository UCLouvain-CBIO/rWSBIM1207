##' @title TidyTuesday's Valentine's Day Consumer Data
##'
##' @description
##'
##' These data, originally organized by Suraj Das for a Kaggle
##' dataset, have been cleaned and prepared for the [TidyTuesday
##' series](https://github.com/rfordatascience/tidytuesday/blob/master/data/2024/2024-02-13/readme.md).
##'
##' The data contains three files:
##'
##' - `historical_spending` contains Valentine's spending from 2010 to 2022.
##'
##' - `gifts_age` contains information on gifts by age.
##'
##' - `gifts_gender` contains information on gifts by gender.
##'
##' For a description of the variables of these table, see the link
##' above.
##'
##' Note that in these historical surveys, gender was collected as
##' only 'Men' and 'Women', which does not accurately include all
##' genders.
##'
##' @return `character(3)` of urls to file names.
##'
##' @author Laurent Gatto
##'
##' @aliases valentin historical_spending gifts_age gifts_gender
##'
##' @md
##'
##' @export
##'
##' @examples
##'
##' valentines()
valentines <- function()
    c(historical_spending = 'https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-02-13/historical_spending.csv',
      gifts_age = 'https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-02-13/gifts_age.csv',
      gifts_gender = 'https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-02-13/gifts_gender.csv')
