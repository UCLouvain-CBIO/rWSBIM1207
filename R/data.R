##' This function generates data based on a student number and loads
##' it in the users environment.
##'
##' @title Make and load exam data
##'
##' @param noma `character(1)` with the student number. Must be
##'     coercible to a `numeric`.
##'
##' @return Invisibly returns `TRUE`. Used for its side effect to load
##'     an object of class `MSnSet` in the user's global environment.
##'
##' @importFrom stats rnorm
##' @importFrom stats runif
##' @importFrom stats t.test
##' 
##' @export
##' 
##' @examples
##' load_exam_data("0123")
##' x0123
load_exam_data <- function(noma) {
    stopifnot(length(noma) == 1)
    set.seed(as.numeric(noma))
    ## define expression data
    n <- round(runif(1, 5000, 10000))
    p <- round(runif(1, 12, 20))
    mn <- runif(1, 5, 10)
    std <- runif(1, 2, 5)
    m <- abs(matrix(rnorm(n * p, mn, std), nrow = n, ncol = p))
    colnames(m) <- paste0("sample_", 1:p)
    rownames(m) <- paste0("gene_", 1:n)
    ## define sample metadata
    n_gr <- 3
    pdata <- data.frame(sample = colnames(m),
                        row.names = colnames(m))
    pdata$groups <- "A"
    pdata$groups[sample(p, round(p/n_gr))] <- "B"    
    pdata$groups[sample(p, round(p/n_gr))] <- "C"
    ## define feature metadata
    fdata <- data.frame(row.names = rownames(m))

    sel_a <- which(pdata$groups == "A")
    sel_b <- which(pdata$groups == "B")
    n_a <- length(sel_a)
    n_b <- length(sel_b)
                     
    m2 <- m[, c(sel_a, sel_b)]
    fdata$p.value <- apply(m2, 1, function(xx)
        t.test(xx[1:n_a], xx[(n_a + 1):(n_a + n_b)])$p.value)

    ## Add 1% missing values
    m[sample(n * p, round((n * p) * 0.01))] <- NA    
    
    res <- MSnbase::MSnSet(exprs = m,
                           pData = pdata,
                           fData = fdata)    
    var_name <- paste0("x", noma)
    assign(var_name, res, pos = globalenv())
    message("The '", var_name, "' data is now available in your working environment.")
    invisible(TRUE)
}

