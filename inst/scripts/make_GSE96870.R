library(SummarizedExperiment)

tmpfile <- tempfile()
download.file(url = "https://raw.githubusercontent.com/Bioconductor/bioconductor-teaching/master/data/GSE96870/se2.rds",
              destfile = tmpfile)

GSE96870_intro_ranges <- readRDS(tmpfile)

save(GSE96870_intro_ranges, file = "../../data/GSE96870_intro_ranges.rda")

rowRanges(GSE96870_intro_ranges) <- NULL

GSE96870_intro <- GSE96870_intro_ranges

save(GSE96870_intro, file = "../../data/GSE96870_intro.rda")
