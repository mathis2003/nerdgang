## author: Lukas :)
## Geeft de E[X] en Var(x) van een continue distributie (PDF vanboven invullen)
## Pas op: er zit een kleine error op en geeft geen breuken terug.
## beter om u integraal gwn me de hand uit te rekenen. Enkel gebruiken in tijdsnood.

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
