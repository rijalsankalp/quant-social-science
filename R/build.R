# R/copy_rmds.R
library(here)
library(fs)

copy_rmds <- function(from_dir, to_dir) {
  if (!dir_exists(to_dir)) dir_create(to_dir)
  files <- list.files(from_dir, pattern = "\\.Rmd$", full.names = TRUE)
  file.copy(files, to_dir, overwrite = TRUE)
}

copy_rmds(here("content", "exams"), here("static", "exams"))
copy_rmds(here("content", "problemsets"), here("static", "problemsets"))
copy_rmds(here("content", "tutorials"), here("static", "tutorials"))
