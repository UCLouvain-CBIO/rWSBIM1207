## somehow, loading beers.csv with data(beers) returns an
## empty data.frame on windows.
beers <- read.csv2("../extdata/beers.csv")
save(beers, file = "../../data/beers.rda")


## beers2, with additional years
library(rWSBIM1207)
data(beers)

beers2 <- beers

set.seed(42)
for (year in 2014:2016) {
    .beers <- beers
    .beers$Year <- year
    .beers$Consumption  <-
        .beers$Consumption +
        sample(-20:20, nrow(.beers), replace = TRUE)
    beers2 <- rbind(beers2, .beers)
}

n <- nrow(beers2)
beers2 <- beers2[sample(nrow(beers2)),
                 c("Work", "Consumption", "Gender", "Age", "Year")]
rownames(beers2) <- NULL
beers2$Consumption[sample(n, 3)] <- NA
beers2$Work[sample(n, 2)] <- NA

readr::write_csv(beers2, path = "../extdata/beers2.csv")