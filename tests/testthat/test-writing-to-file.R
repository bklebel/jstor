# library(readr)
# context("writing-to-file")
# 
# paths <- c("testfiles/test-file-single-author.xml", "broken_path.txt")
# 
# test_that("writing correct results to file works", {
#   temp_dir <- tempdir()
#   jstor_convert_to_file(paths, 1, paste0(temp_dir, "meta_data"), find_metadata)
# 
#   expect_identical(read_csv("testfiles/correct_meta_data.csv", col_names = FALSE),
#                    read_csv(paste0(temp_dir, "meta_data-1.csv"),
#                             col_names = FALSE))
# 
#   unlink(temp_dir)
# })
# 
# 
# test_that("writing error messages to file works", {
#   temp_dir <- tempdir()
# 
#   jstor_convert_to_file(paths, 1, paste0(temp_dir, "meta_data"), find_metadata)
# 
#   res <- read_csv(paste0(temp_dir, "meta_data_broken-1.csv"),
#                   col_names = TRUE)
# 
#   # the following is needed for expect_identical
#   attr(res, "spec") <- NULL
# 
#   correct_res <- data_frame(
#     id = 2L,
#     error_message = "`file_path` must be a `*.xml` file"
#   )
# 
#   expect_identical(res, correct_res)
# 
#   unlink(temp_dir)
# })
# 
# 
# 
# test_that("import wrapper works", {
#   temp_dir <- tempdir()
#   jstor_import_wrapper(paths, out_file = "meta_data", out_path = temp_dir,
#                        .f = find_metadata)
#   
#   expect_identical(read_csv("testfiles/correct_meta_data.csv", col_names = FALSE),
#                    read_csv(paste0(temp_dir, "meta_data-1.csv"),
#                             col_names = FALSE))
#   
#   unlink(temp_dir)
# })
# 
# 