library("pRolocdata")
library("tidies")
data(mulvey2015)

mvylng <- as_tibble(mulvey2015) %>%
    select(Accession, markers, sample, exprs, Description)


mvylng$time <- as.numeric(sub("XEN", 96,
                              sub("hr", "",
                                  sub("rep.+_", "", mvylng$sample))))
mvylng$rep <- as.numeric(sub("rep", "", sub("_.+$", "", mvylng$sample)))

save(mvylng, file = "../../data/mvylng.rda",
     compress = "xz", compression_level = 9)
