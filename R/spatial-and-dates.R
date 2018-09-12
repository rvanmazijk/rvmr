qdgc2hdgc <- function(x) {
  # QDS -> HDS by dropping the last letter
  substr(x, 1, nchar(x) - 1)
}

is_ISO8601_date <- function(x) {
  # I.e., does a string conform to yyyy-mm-dd?
  stringr::str_detect(x, "^\\d{4}-\\d{2}-\\d{2}$")
}
