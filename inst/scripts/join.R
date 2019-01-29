library("pRoloc")
library("pRolocdata")
library("tibble")

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

## set key manually
jdf3 <- jdf2
names(jdf3)[3] <- "UniProt"

## outer joins
jdf4 <- jdf1[1:10, ]
jdf5 <- jdf2[8:12, ]

## duplicated keys
jdf6 <- jdf1[c(1, 2, 2, 3, 4), ]
jdf6$organelle[2:3] <- c("Endoplasmic reticulum", "Golgi apparatus")
jdf7 <- jdf2[c(1:4, 4), ]
jdf7$isoform <- c(NA, NA, NA, 1, 2)

save(jdf1, jdf2, jdf3, jdf4, jdf5, jdf6, jdf7,
     file = "~/dev/rWSBIM1207/data/jdf.rda")
