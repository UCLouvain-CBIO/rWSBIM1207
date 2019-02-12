## somehow, loading beers.csv with data(beers) returns an
## empty data.frame on windows.
beers <- read.csv2("../extdata/beers.csv")
save(beers, file = "../../data/beers.rda")