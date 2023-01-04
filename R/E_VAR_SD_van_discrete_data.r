####################
## author: Matthias

give_variance <- function(values, chances) {
  expected_value <- give_expected_value(values , chances)
  temp <- (values - expected_value)^2
  return(sum(temp * chances))
}

give_expected_value <- function(values, chances) {
  return(sum(values * chances))
}

give_sd <- function(values, chances) {
  return(sqrt(give_variance(values, chances)))
}

