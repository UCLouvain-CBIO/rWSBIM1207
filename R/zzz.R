.onAttach <- function(libname, pkgname) {
    packageStartupMessage(paste("\nThis is 'rWSBIM1207' version",
                                utils::packageVersion("rWSBIM1207"), "\n"))
}
