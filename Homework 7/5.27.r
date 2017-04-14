mu    <- 10
n     <- 5
sigma <- 3

dist_matrix <- matrix(nrow = 0, ncol = 5)

for(i in 1:100){
  dist_matrix <- rbind(dist_matrix, rnorm(n, mu, sigma))
}

# mean_vector <- rowMeans(dist_matrix)
mean_vector <- apply(dist_matrix, 1, mean)

var_vector <- sqrt(apply(dist_matrix, 1, var))

T <- (mean_vector - mu) * sqrt(n) / var_vector

show(quantile(T, c(.25, .5, .9)))

plot(density(T))