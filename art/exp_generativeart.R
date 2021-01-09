## Experimenting with colors and patterns in the generativeart package

# Set the paths
IMG_DIR <- paste0("img/")
IMG_SUBDIR <- "everything/"
IMG_SUBDIR2 <- "favorites/"
IMG_PATH <- paste0(IMG_DIR, 
                   IMG_SUBDIR)

LOGFILE_DIR <- paste0("logs/")
LOGFILE <- "logfile.csv"
LOGFILE_PATH <- paste0(LOGFILE_DIR, 
                       LOGFILE)

generativeart::setup_directories(IMG_DIR, 
                                 IMG_SUBDIR, 
                                 IMG_SUBDIR2, 
                                 LOGFILE_DIR)

## Set up the formula
example_formula <- list(
  x = quote(runif(1, -1, 10) * y_i + sin(y_i^2)),
  y = quote(runif(1, -1, 10) * x_i - cos(x_i^2) * y_i^4)
)

## Create!
generativeart::generate_img(formula = example_formula, 
                            nr_of_img = 5, # set the number of iterations
                            polar = TRUE, 
                            filetype = "png", 
                            color = "#bea8ed", 
                            background_color = "#05262b")




