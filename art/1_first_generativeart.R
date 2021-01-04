## First use of the library generativeart
## Following this tutorial: 
## https://medium.com/@vitgabrhel/getting-started-with-generative-art-in-r-3bc50067d34b

# set the paths
IMG_DIR <- "1/img/"
IMG_SUBDIR <- "everything/"
IMG_SUBDIR2 <- "favorites/"
IMG_PATH <- paste0(IMG_DIR, 
                   IMG_SUBDIR)

LOGFILE_DIR <- "1/logs/"
LOGFILE <- "logfile.csv"
LOGFILE_PATH <- paste0(LOGFILE_DIR, 
                       LOGFILE)

generativeart::setup_directories(IMG_DIR, 
                                 IMG_SUBDIR, 
                                 IMG_SUBDIR2, 
                                 LOGFILE_DIR)

## Set up the formula
example_formula <- list(
  x = quote(runif(1, -1, 10) * x_i^2 - sin(y_i^2)),
  y = quote(runif(1, -1, 10) * y_i^3 - cos(x_i^2) * y_i^4)
)

## Create!
generativeart::generate_img(formula = example_formula, 
                            nr_of_img = 5, # set the number of iterations
                            polar = TRUE, 
                            filetype = "png", 
                            color = "#c1a06e", 
                            background_color = "#1a3657")



