# set up data
pressure <- c(
  20.79, 20.79, 22.40, 22.67,
  23.15, 23.35, 23.89, 23.99,
  24.02, 24.01, 25.14, 26.57,
  28.49, 27.76, 29.04, 29.88,
  30.06
)

boil_point <- c(
  194.5, 194.3, 197.9, 198.4,
  199.4, 199.9, 200.9, 201.1,
  201.4, 201.3, 203.6, 204.6,
  209.5 ,208.6, 210.7, 211.9,
  212.2
)

# a
plot(pressure, boil_point, main="Boiling Point of water vs. barometric pressure")

# b
fit <- lm(boil_point~pressure)
abline(fit)

# c
# echo out the r^2 value
summary(fit)[['r.squared']]

# d
sqrt(sum(resid(fit)^2) / (length(pressure) - 2))

#
# 10.10
#

# a
# create dataframe for prediction
newpresure <- data.frame(pressure=28)
# echo out prediction
predict(fit, newpresure, level = 0.05, interval="confidence")

# b
# create dataframe for prediction
newpresure <- data.frame(pressure=31)
# echo out prediction
predict(fit, newpresure, level = 0.05, interval="confidence")

# c
# create dataframe for prediction
newpresure <- data.frame(pressure=31)
# echo out prediction
predict(fit, newpresure, level = 0.05, interval="predict")
