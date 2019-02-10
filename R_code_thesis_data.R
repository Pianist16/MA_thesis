setwd("C:/Users/User/Desktop/Чина/CEU/MA Thesis/stata")

data <- read.csv("data.csv")
a <- seq(1, nrow(data))

#### recoding age so that each individual is 1 year older in the successive period ####

#a <- seq(1, nrow(data))

#for (i in seq(3, length(a), by = 3)){
#  data[i, 3] <- data[i-2, 3] + 2
#  data[i-1, 3] <- data[i-2,3] + 1
#}

#### generating the pie_2 variable ####

data["pie2"] <- numeric()

for (i in seq(3, length(a), by = 3)){
  data[i, 8] <- .5 * ((data[i, 4]) - (data[i-2, 4])) - (data[i-1, 4]) + (data[i-2, 4])
  data[i-1, 8] <- .5 * ((data[i, 4]) - (data[i-2, 4])) - (data[i-1, 4]) + (data[i-2, 4])
  data[i-2, 8] <- .5 * ((data[i, 4]) - (data[i-2, 4])) - (data[i-1, 4]) + (data[i-2, 4])
}

#### generating the pie_1 variable ####

data["pie1"] <- numeric()

for (i in seq(3, length(a), by = 3)){
  data[i, 9] <- .5 * ((data[i-1, 4]) - (data[i-2, 4]) - data[i, 8] * (2 * data[i-1, 3] - 1) + .5 * ((data[i, 4]) - (data[i-2, 4])) - data[i, 8] * (2 * data[i, 3] - 2))
  data[i-1, 9] <- .5 * ((data[i-1, 4]) - (data[i-2, 4]) - data[i, 8] * (2 * data[i-1, 3] - 1) + .5 * ((data[i, 4]) - (data[i-2, 4])) - data[i, 8] * (2 * data[i, 3] - 2))
  data[i-2, 9] <- .5 * ((data[i-1, 4]) - (data[i-2, 4]) - data[i, 8] * (2 * data[i-1, 3] - 1) + .5 * ((data[i, 4]) - (data[i-2, 4])) - data[i, 8] * (2 * data[i, 3] - 2))
}

#### generating the pie_0 variable ####

data["pie0"] <- numeric()

for (i in seq(3, length(a), by = 3)){
  data[i, 10] <- (1/3) * ((data[i-2, 4]) - data[i, 9] * data[i-2, 3] - data[i, 7] * (data[i-2, 3]^2) + (data[i-1, 4]) - data[i, 9] * data[i-1, 3] - data[i, 7] * (data[i-1, 3]^2) + (data[i, 4]) - data[i, 9] * data[i, 3] - data[i, 7] * (data[i, 3]^2))
  data[i-1, 10] <- (1/3) * ((data[i-2, 4]) - data[i, 9] * data[i-2, 3] - data[i, 7] * (data[i-2, 3]^2) + (data[i-1, 4]) - data[i, 9] * data[i-1, 3] - data[i, 7] * (data[i-1, 3]^2) + (data[i, 4]) - data[i, 9] * data[i, 3] - data[i, 7] * (data[i, 3]^2))
  data[i-2, 10] <- (1/3) * ((data[i-2, 4]) - data[i, 9] * data[i-2, 3] - data[i, 7] * (data[i-2, 3]^2) + (data[i-1, 4]) - data[i, 9] * data[i-1, 3] - data[i, 7] * (data[i-1, 3]^2) + (data[i, 4]) - data[i, 9] * data[i, 3] - data[i, 7] * (data[i, 3]^2))
}

#### generating the alpha_2 variable ####

data["alpha2"] <- numeric()

for (i in seq(3, length(a), by = 3)){
  data[i, 11] <- .5 * ((data[i, 5]) - (data[i-2, 5])) - (data[i-1, 5]) + (data[i-2, 5])
  data[i-1, 11] <- .5 * ((data[i, 5]) - (data[i-2, 5])) - (data[i-1, 5]) + (data[i-2, 5])
  data[i-2, 11] <- .5 * ((data[i, 5]) - (data[i-2, 5])) - (data[i-1, 5]) + (data[i-2, 5])
}

#### generating the alpha_1 variable ####

data["alpha1"] <- numeric()

for (i in seq(3, length(a), by = 3)){
  data[i, 12] <- .5 * ((data[i-1, 5]) - (data[i-2, 5]) - data[i, 11] * (2 * data[i-1, 3] - 1) + .5 * ((data[i, 5]) - (data[i-2, 5])) - data[i, 11] * (2 * data[i, 3] - 2))
  data[i-1, 12] <- .5 * ((data[i-1, 5]) - (data[i-2, 5]) - data[i, 11] * (2 * data[i-1, 3] - 1) + .5 * ((data[i, 5]) - (data[i-2, 5])) - data[i, 11] * (2 * data[i, 3] - 2))
  data[i-2, 12] <- .5 * ((data[i-1, 5]) - (data[i-2, 5]) - data[i, 11] * (2 * data[i-1, 3] - 1) + .5 * ((data[i, 5]) - (data[i-2, 5])) - data[i, 11] * (2 * data[i, 3] - 2))
}

#### generating the alpha_0 variable ####

data["alpha0"] <- numeric()

for (i in seq(3, length(a), by = 3)){
  data[i, 13] <- (1/3) * ((data[i-2, 5]) - data[i, 12] * data[i-2, 3] - data[i, 11] * (data[i-2, 3]^2) + (data[i-1, 5]) - data[i, 12] * data[i-1, 3] - data[i, 11] * (data[i-1, 3]^2) + (data[i, 5]) - data[i, 12] * data[i, 3] - data[i, 11] * (data[i, 3]^2))
  data[i-1, 13] <- (1/3) * ((data[i-2, 5]) - data[i, 12] * data[i-2, 3] - data[i, 11] * (data[i-2, 3]^2) + (data[i-1, 5]) - data[i, 12] * data[i-1, 3] - data[i, 11] * (data[i-1, 3]^2) + (data[i, 5]) - data[i, 12] * data[i, 3] - data[i, 11] * (data[i, 3]^2))
  data[i-2, 13] <- (1/3) * ((data[i-2, 5]) - data[i, 12] * data[i-2, 3] - data[i, 11] * (data[i-2, 3]^2) + (data[i-1, 5]) - data[i, 12] * data[i-1, 3] - data[i, 11] * (data[i-1, 3]^2) + (data[i, 5]) - data[i, 12] * data[i, 3] - data[i, 11] * (data[i, 3]^2))
}

#### generating the F_tilda1 variable ####

data["F_tilda1"] <- numeric()

for (i in seq(3, length(a), by = 3)){
  data[i, 14] <- (1/3) * (data[i-2, 6] + data[i-1, 6] + data[i, 6])
  data[i-1, 14] <- (1/3) * (data[i-2, 6] + data[i-1, 6] + data[i, 6])
  data[i-2, 14] <- (1/3) * (data[i-2, 6] + data[i-1, 6] + data[i, 6])
}

#### generating the F_tilda2 variable ####

data["F_tilda2"] <- numeric()

for (i in seq(3, length(a), by = 3)){
  data[i, 15] <- (1/3) * (data[i-2, 7] + data[i-1, 7] + data[i, 7])
  data[i-1, 15] <- (1/3) * (data[i-2, 7] + data[i-1, 7] + data[i, 7])
  data[i-2, 15] <- (1/3) * (data[i-2, 7] + data[i-1, 7] + data[i, 7])
}

data <- unique(data[, c(1, 2, 8, 9, 10, 13, 14, 15)])

write.csv(data, "data_r.csv")
