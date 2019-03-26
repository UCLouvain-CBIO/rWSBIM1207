library("pRolocdata")
data(mulvey2015)

mvylng <- as_tibble(mulvey2015) %>%
    select(Accession, markers, sample, exprs, Description)

save(mvylng, file = "../../data/mvylng.rda",
     compress = "xz", compression_level = 9)