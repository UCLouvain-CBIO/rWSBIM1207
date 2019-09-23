make_noma <- function(n) sapply(1:n, function(n) paste(sample(0:9, 12, replace = TRUE), collapse = ""))

set.seed(1L)
x <- data.frame(noma = make_noma(10),
                interro1 = c(sample(9), NA),
                interro2 = sample(10),
                interro3 = c(NA, sample(9)),
                interro4 = sample(10))

saveRDS(x, file = "../extdata/interro2.rds")