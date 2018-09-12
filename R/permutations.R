permute_vector <- function(x) {
  # Shuffles positions of values in vector
  x[sample(length(x))]
}

permute_wo_nas <- function(x) {
  # Shuffles positions of values in vector,
  # but keeps NAs in their starting positions
  x[!is.na(x)] <- permute_vector(x[!is.na(x)])
  x
}
