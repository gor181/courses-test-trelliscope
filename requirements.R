library(devtools)

install_version("ggplot2", "2.2.1")
install_version("tidyr", "0.7.1")
install_version("dplyr", "0.7.2")
install_version("gapminder", "0.2.0")
install_github("hafen/trelliscopejs")

# Utility functions to install from cran / github
cran_install <- function(package, version) {
  devtools::install_version(package, version = version, type = "source")
}

github_install <- function(package, version) {
  devtools::install_github(package, ref = version, dependencies = FALSE, auth_token = Sys.getenv("GITHUB_TOKEN"))
}

# dependencies and internal packages
cran_install("markdown", "0.7.7")
cran_install("R6", "2.2.0")
cran_install("stringdist", "0.9.4.2")
cran_install("magrittr", "1.5")
cran_install("evaluate", "0.10")
cran_install("rjson", "0.2.15")
cran_install("praise", "1.0.0")

github_install("datacamp/testwhat", "v4.3.1")
github_install("datacamp/r-completion", "v0.1.23")
github_install("datacamp/r-backend", "trelliscope")
