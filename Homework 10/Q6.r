# set up data
x1 <- c(
  10, 8, 13, 9,
  11, 14, 6, 4,
  12, 7, 5
)
y1 <- c(
  8.04, 6.95, 7.58, 8.81,
  8.33, 9.96, 7.24, 4.26,
  10.84, 4.82, 5.68
)
y2 <- c(
  9.14, 8.14, 8.74, 8.77,
  9.26, 8.10, 6.13, 3.10,
  9.13, 7.26, 4.74
)
y3 <- c(
  7.46, 6.77, 12.74, 7.11,
  7.81, 8.84, 6.08, 5.29,
  8.15, 6.42, 5.73
)
x2 <- c(
  8, 8, 8, 8,
  8, 8, 8, 19,
  8, 8, 8
)
y4 <- c(
  6.58, 4.76, 7.71, 8.84,
  8.47, 7.04, 5.25, 12.50,
  5.56, 7.91, 6.89
)

# a
plot(x1,y1, main = " 1 - 1 ")
plot(x1,y2, main = " 1 - 2 ")
plot(x1,y3, main = " 1 - 3 ")
plot(x2,y4, main = " 2 - 4 ")

# b
fit1 = lm(y1~x1)
fit2 = lm(y2~x1)
fit3 = lm(y3~x1)
fit4 = lm(y4~x2)

plot(x1,y1, main = " 1 - 1 ")
abline(fit1)
plot(x1,y2, main = " 1 - 2 ")
abline(fit2)
plot(x1,y3, main = " 1 - 3 ")
abline(fit3)
plot(x2,y4, main = " 2 - 4 ")
abline(fit4)

# print r^2
sqrt(sum(resid(fit1)^2) / (length(x1) - 2))
sqrt(sum(resid(fit2)^2) / (length(x1) - 2))
sqrt(sum(resid(fit3)^2) / (length(x1) - 2))
sqrt(sum(resid(fit4)^2) / (length(x1) - 2))

# print summaries

summary(fit1)[['coefficients']]
summary(fit2)[['coefficients']]
summary(fit3)[['coefficients']]
summary(fit4)[['coefficients']]

summary(fit1)[['fstatistic']]
summary(fit2)[['fstatistic']]
summary(fit3)[['fstatistic']]
summary(fit4)[['fstatistic']]