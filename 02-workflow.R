library(testthat)
DT <- data.table::fread("A\n1.010203040506070809010203040506\n")
expect_equal(nrow(DT), 1L)
expect_s3_class(DT, "data.table")
