library(tidyverse)

###################################################
## Original data from
## https://statbel.fgov.be/fr/open-data/evolution-mensuelle-des-faillites-par-nace


###################################################
## Download metadata

download.file(url = "https://statbel.fgov.be/sites/default/files/files/opendata/BRI_Nace/Method_BANKRUPTCIES.xlsx",
              destfile = "../extdata/Method_BANKRUPTCIES.xlsx")

###################################################
## Download data

download.file(url = "https://statbel.fgov.be/sites/default/files/files/opendata/BRI_Nace/TF_BANKRUPTCIES.zip",
              destfile = f <- tempfile())


x <- read_delim(f, delim = "|")
set.seed(123)
(n_keep <- round(table(x$CD_EMPLOYMENT_CLASS) /
                c(18, 12, 5, 4, 3, 2, 1, 1, 1, 1)))
x <- do.call(rbind,
             lapply(1:10, function(i) {
                 xi <- x[x$CD_EMPLOYMENT_CLASS == i, ]
                 xi[sample(nrow(xi), n_keep[i]), ]
             }))
x <- x[sample(nrow(x)), ]
all.equal(table(x$CD_EMPLOYMENT_CLASS), n_keep)
write_delim(x, file = "TF_BANKRUPTCIES_subset.txt", delim = "|")

zip("TF_BANKRUPTCIES_subset.txt.zip", "TF_BANKRUPTCIES_subset.txt")
unlink("TF_BANKRUPTCIES_subset.txt")

file.rename("TF_BANKRUPTCIES_subset.txt.zip",
            "../extdata/TF_BANKRUPTCIES_subset.txt.zip")

###################################################
## Load data

x2 <- read_delim("../extdata/TF_BANKRUPTCIES_subset.txt.zip", delim = "|") |>
    mutate(time = dmy(CD_WEEK_START))
