renv::activate()
renv::install("usethis")
library(usethis)
use_git()

if (!dir.exists(".github/workflows"))
  dir.create(".github/workflows", recursive = TRUE)

renv::snapshot()
