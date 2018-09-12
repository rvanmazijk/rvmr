as_numeric_list_col <- function(x) {
  map(str_split(x, ","), as.numeric)
}
