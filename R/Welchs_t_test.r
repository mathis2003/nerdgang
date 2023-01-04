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


