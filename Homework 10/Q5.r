# Prepare data
speed <- c(
  20, 20, 
  30, 30, 
  40, 40, 
  50, 50, 
  60, 60
)

distance <- c(
  16.3, 26.7,
  39.2, 63.5,
  65.7, 98.4,
  104.1, 155.6,
  217.2, 160.8
)

# a

plot(speed, distance, main = "Stopping distance versus speed")

fit = lm(distance~speed)
abline(fit)

plot(speed, fit[['residuals']], ylab = "Residuals", main = "Residuals from fit vs. speed")
abline(0,0)

# b
# echo out F-statistic
summary(fit)

# c

distance_lin = sqrt(distance)

# d

plot(speed, distance_lin, main = "Linearized stopping distance versus speed")

fit_lin = lm(distance_lin~speed)
abline(fit_lin)

plot(speed, fit_lin[['residuals']], ylab = "Residuals", main = "Residuals from linearized fit vs. speed")
abline(0,0)

# echo out F-statistic
summary(fit_lin)

# create dataframe for prediction
newspeed <- data.frame(speed=40)
# echo out prediction
predict(fit, newspeed, level = 0.05, interval="predict")
