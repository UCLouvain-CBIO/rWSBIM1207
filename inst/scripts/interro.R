library("tidyverse")

n <- 100
m <- 105

generate_id <- function(n)
    replicate(n,
              paste(c(sample(LETTERS[1]),
                      paste(sample(0:9, 5, replace = TRUE), collapse = "")),
                    collapse = ""))

set.seed(123)
interroA <- data.frame(id = generate_id(n),
                       height = round(rnorm(n, 175, 10)),
                       gender = sample(c("M", "F"), n, replace = TRUE),
                       X = rnorm(n),
                       interro1 = sample(0:20, n, replace = TRUE),
                       interro2 = sample(1:20, n, replace = TRUE),
                       interro3 = sample(7:20, n, replace = TRUE),
                       interro4 = sample(7:20, n, replace = TRUE))
interroA$X[sample(n, 10)] <- NA
interroA$interro1[sample(n, 3)] <- NA
interroA$interro2[sample(n, 1)] <- NA
interroA$interro3[sample(n, 7)] <- NA
interroA$interro4[sample(n, 7)] <- NA
interroB <- data.frame(id = generate_id(m),
                       height = round(rnorm(m, 175, 10)),
                       gender = sample(c("M", "F"), m, replace = TRUE),
                       X = rnorm(m),
                       interro1 = sample(0:20, m, replace = TRUE),
                       interro2 = sample(1:20, m, replace = TRUE),
                       interro3 = sample(8:20, m, replace = TRUE),
                       interro4 = sample(6:20, m, replace = TRUE))
interroB$X[sample(m, 10)] <- NA
interroB$interro1[sample(m, 3)] <- NA
interroB$interro2[sample(m, 1)] <- NA
interroB$interro3[sample(m, 7)] <- NA
interroB$interro4[sample(m, 7)] <- NA

write.csv(interroA, "../extdata/interroA2.csv", row.names = FALSE)
write.csv(interroB, "../extdata/interroB2.csv", row.names = FALSE)

set.seed(5)
n <- 10 + 5

interroC <- tibble(id = sample(c(generate_id(10),
                                 sample(interroA$id, 5))),
                   interro5 = sample(3:14, n, replace = TRUE),
                   interro6 = sample(11:20, n, replace = TRUE),
                   interro7 = sample(6:19, n, replace = TRUE))
save(interroC, file = "../../data/interroC.rda",
     compress = "xz", compression_level = 9)


interroA$serie <- "A"
interroB$serie <- "B"
interroL <- gather(as_tibble(rbind(interroA, interroB)),
                   key = interro, value = result,
                   starts_with("interro"))

save(interroL, file = "../../data/interroL.rda",
     compress = "xz", compression_level = 9)
