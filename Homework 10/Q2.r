# Prepare data
years <- c(
  1896, 1900, 1908, 1912, 
  1920, 1924, 1928, 1932, 
  1936, 1948, 1952, 1956, 
  1960, 1964, 1968, 1972, 
  1976, 1980, 1984, 1988, 
  1992
)

years_from_1896 = years - 1896

dist <- c(
  13.71, 14.47, 14.92, 14.64,
  14.50, 15.53, 15.21, 15.72,
  16.00, 15.40, 16.22, 16.35,
  16.81, 16.85, 17.39, 17.35,
  17.29, 17.35, 17.25, 17.61, 
  18.17
)

#
# 10.5
#

# a
plot(years, dist, main = "Olympic long jump distance vs. year")

# b
fit <- lm(dist~years)
# Add line to plot
abline(fit)

# c
sqrt(sum(resid(fit)^2) / (length(years) - 2))

# d
# echo out the r^2 value
summary(fit)[['r.squared']]

# e
# calculate the cor
cor(dist, years)
#
# 10.9
#

# a
t <- coef(summary(fit))[2, "Estimate"] / coef(summary(fit))[2, "Std. Error"]
# echo out t's Student-t test
t
# echo out the length of the data set
length(years)

# b
# create dataframe for prediction
newjump = data.frame(years=2004)
# echo out prediction
predict(fit, newjump, level = 0.05, interval="predict")
