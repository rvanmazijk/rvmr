clean_envir <- function(start_envir, end_envir, except = NULL) {
  stopifnot(is.null(except) || is.character(except))
  new_objs <- end_envir[!(end_envir %in% start_envir)]
  if (is.character(except)) {
    new_objs <- new_objs[!(new_objs == except)]
  }
  rm(list = new_objs, envir = .GlobalEnv)
  rm(list = deparse(substitute(end_envir)), envir = .GlobalEnv)
}

# Test
if (FALSE) {
  # New session
  rm(list = ls())
  source("R/cleanenvir.R")

  # Script 1
  x <- 1
  y <- 2
  z <- 3

  # Script 2
  # (sources script 1)
  # List all objects present before body of script 2 runs
  start_envir <- ls()
  start_envir
  # Run script 2's code
  a <- 1
  b <- 2
  c <- 3

  # Clean up the environment:
  # Remove objects that weren't in the environment before script 2 ran
  end_envir <- ls()
  clean_envir(start_envir, end_envir)

  ls()
}
