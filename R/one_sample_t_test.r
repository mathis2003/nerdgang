## Author: Lukas
# Invullen
# H_0: The true mean is equal to mean_h0. 
# H_a: De true mean is greater than mean_h0 (or unequal to)
data <-c(2900, 2500, 2600, 3100)
mean_h0 <- 2600 
alfa <- 0.1

# Berekeningen
n <- length(data)
t <- (mean(data) - mean_h0) / (sd(data) / sqrt(n))
df <- n - 1

p_val <- 1 - pt(t, df)
cat("p-value (one-sided):", p_val)
cat("p-value (two-sided):", 2 * p_val)

# dit doet hetzelfde
# t.test(data, alternative = "greater", mu=mean_h0, conf.level = 1-alfa)
# t.test(data, alternative = "two.sided", mu=mean_h0, conf.level = 1-alfa)

