`%!in%` <- function(x, y) {
  !(x %in% y)
}
# More pipe-friendly alias:
not_in <- `%!in%`

#`%and%` <- function(x, y) {
#  c(x, y[y %!in% x])
#}
# Identical to dplyr::union()
