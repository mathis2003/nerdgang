## author: Mathis

# als je een data file inleest, dan is het soms nodig om de kolommen eruit te halen, niet als dataframes, maar als vectors:
d <- read.table("Downloads/nitrate.dat", header = TRUE)
col_vec <- d[, "GNA"]
