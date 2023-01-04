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


####################
## author: Lukas :)

probability_density_function <- function(x) {
  return (...) # hier invullen
}

E_function <- function(x) {
  return(x * probability_density_function(x))
}

E_X = integrate(Vectorize(E_function), lower = -Inf, upper = Inf)$value

Var_function <- function(x) { 
  return((x - E_X)**2 * probability_density_function(x))  
}

VAR_X = integrate(Vectorize(Var_function), lower = -Inf, upper = Inf)$value

cat("E[X] =", E_X)
cat("Var(X) =", VAR_X)

# ^ Geeft de E[X] en Var(x) van een continue distributie (PDF vanboven invullen) ^


# Welch's test kan ook gedaan worden op een dataset op deze manier (voorbeeld):
# NCBirths2004<- read.csv("http://sites.google.com/site/chiharahesterberg/data2/NCBirths2004.csv")
# t.test(Weight~Tobacco,data = NCBirths2004, alt = "two.sided",var.equal = FALSE)

############### hier uw dingen invullen ####################
# gemiddelde van beide samples
x1_bar <- 3472
x2_bar <- 3257

# SD van beide samples
s1 <- 479
s2 <- 520

# Sample sizes
n1 <- 898
n2 <- 111

####################################

t <- (abs(x1_bar - x2_bar))/(sqrt(s1^2 / n1 + s2^2 / n2))
df <- ( (s1^2 / n1 + s2^2 / n2)^2 )/( (s1^2 / n1)^2 / (n1 - 1) + (s2^2 / n2)^2 / (n2 - 1) )

cat("statistic t:", t)
cat("degrees of freedom:", df)
cat("p-value", 1 - pt(t, df)) # *2 doen in geval van een two sided alternative!! 


####################
## author: Mathis

# als je een data file inleest, dan is het soms nodig om de kolommen eruit te halen, niet als dataframes, maar als vectors:
d <- read.table("Downloads/nitrate.dat", header = TRUE)
col_vec <- d[, "GNA"]
