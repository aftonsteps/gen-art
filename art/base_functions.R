## Exploring what these functions look like without randomness

test_data <- data.frame(x_i = runif(seq(1, 1000)),
                        y_i = runif(seq(1, 1000)))

## Original example
data_1 <- 
  test_data %>% 
  dplyr::mutate(x_1 = runif(1, -1, 10) * x_i^2 - sin(y_i^2),
                y_1 = runif(1, -1, 10) * y_i^3 - cos(x_i^2) * y_i^4) 

plot(y_1 ~ x_1, data_1)


## 2nd, change both to cos
data_2 <- 
  test_data %>% 
  dplyr::mutate(x_1 = runif(1, -1, 10) * x_i^2 - sin(y_i^2),
                y_1 = runif(1, -1, 10) * y_i^3 - sin(x_i^2) * y_i^4) 

plot(y_1 ~ x_1, data_2)


## 3rd, no trig
data_3 <- 
  test_data %>% 
  dplyr::mutate(x_1 = runif(1, -1, 10) * x_i^2 - (y_i^2),
                y_1 = runif(1, -1, 10) * y_i^3 - (x_i^2) * y_i^4) 

plot(y_1 ~ x_1, data_3)


## 4rd, polynomia with many terms
data_4 <- 
  test_data %>% 
  dplyr::mutate(x_1 = runif(1, -1, 10) * x_i^2 - (x_i^2) + (x_i^3),
                y_1 = runif(1, -1, 10) * y_i^1 - (y_i^3) + y_i^4) 

plot(y_1 ~ x_1, data_4)
