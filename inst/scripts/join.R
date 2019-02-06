library("pRoloc")
library("pRolocdata")
library("tibble")
set.seed(123)

data("hyperLOPIT2015")

x <- fData(markerMSnSet(hyperLOPIT2015))[1:25, c("entry.name",
                                                 "protein.description",
                                                 "markers")]
x$uniprot <- rownames(x)
x$organism <- "Mmus"
x$description <- sub(" OS.+", "", x$protein.description)
x$gene_name <- sub(" .+$", "", sub("^.+GN=", "", x$protein.description))
x$entry <- sub("\\]", "", sub("^.+\\[", "", x$protein.description))
x$organelle <- as.character(x$markers)
rownames(x) <- NULL
x <- as_tibble(x)

## data for simple full join

jdf1 <- x[, c("uniprot", "organelle", "entry")]
jdf2 <- x[, c("gene_name", "description", "uniprot", "organism")]
jdf2 <- jdf2[sample(nrow(jdf2)), ]


## set key manually
jdf3 <- jdf2
names(jdf3)[3] <- "UniProt"

## outer joins
jdf4 <- jdf1[1:10, ]
jdf5 <- jdf2[8:12, ]

## duplicated keys
jdf6 <- jdf1[c(1, 2, 2, 3, 4), ]
jdf6$organelle[2:3] <- c("Endoplasmic reticulum", "Golgi apparatus")
jdf6$isoform <- c(1, 1, 2, 1, 1)

i <- which(jdf2$uniprot == "Q99PL5")
j <- which(jdf2$uniprot != "Q99PL5")[1:3]
jdf7 <- jdf2[c(i, i, j), ]
jdf7$isoform_num  <- c(1, 2, rep(1, 3))
jdf7$measure <- c(102, 3, 13, 54, 28)

save(jdf1, jdf2, jdf3, jdf4, jdf5, jdf6, jdf7,
     file = "~/dev/rWSBIM1207/data/jdf.rda")
