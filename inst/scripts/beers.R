## somehow, loading beers.csv with data(beers) returns an
## empty data.frame on windows.
beers <- read.csv2("../extdata/beers.csv")
save(beers, file = "../../data/beers.rda")




## beers2, with additional years
library(rWSBIM1207)
data(beers)

## There are currently 48 obervations. I want a total of 500, for years 2014 to
## 2017.
n <- 500
n2 <- n - nrow(beers)
beers2 <- beers[rep(NA, n2), ]

set.seed(42)
beers2$Year <- sample(2014:2016, n2, replace = TRUE)
beers2$Day <- sample(1:30, n2, replace = TRUE)
beers2$Month <- sample(1:12, n2, replace = TRUE)
beers2$Work <- sample(c('Employed', 'Unemployed'), replace = TRUE)
beers2$Gender <- sort(sample(c('Male', 'Female'), n2, replace = TRUE))
beers2$Age <- sample(25:55, n2, replace = TRUE)
ngender <- table(beers2$Gender)
beers2$Consumption <- c(sample(120:230, ngender['Female'], replace = TRUE),
                        sample(100:350, ngender['Male'], replace = TRUE))
beers2 <- beers2[sample(n2), ]
beers2 <- rbind(beers, beers2)[, -1]

## randomise
beers2 <- beers2[sample(nrow(beers2)), ]
rownames(beers2) <- NULL

## add missing values
beers2$Consumption[sample(nrow(beers2), 3)] <- NA
beers2$Work[sample(nrow(beers2), 2)] <- NA

readr::write_tsv(beers2, path = "../extdata/beer2.tsv")