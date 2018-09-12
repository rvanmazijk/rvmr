is_odd <- function(x) {
  as.logical(x %% 2)
}
is_even <- function(x) {
  !is_odd(x)
}
even_or_odd <- function(x) {
  if (is_even(x)) {
    return("even")
  } else if (is_odd(x)) {
    return("odd")
  }
}
