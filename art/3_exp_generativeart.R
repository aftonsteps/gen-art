## Experimenting with colors and patterns

## Not trig functions

# Set the paths
IMG_DIR <- "3/img/"
IMG_SUBDIR <- "everything/"
IMG_SUBDIR2 <- "favorites/"
IMG_PATH <- paste0(IMG_DIR, 
                   IMG_SUBDIR)

LOGFILE_DIR <- "3/logs/"
LOGFILE <- "logfile.csv"
LOGFILE_PATH <- paste0(LOGFILE_DIR, 
                       LOGFILE)

generativeart::setup_directories(IMG_DIR, 
                                 IMG_SUBDIR, 
                                 IMG_SUBDIR2, 
                                 LOGFILE_DIR)

## Set up the formula
example_formula <- list(
  x = quote(runif(1, -1, 10) * x_i^2 - (y_i^2)),
  y = quote(runif(1, -1, 10) * y_i^3 - (x_i^2))
)

## Create!
generativeart::generate_img(formula = example_formula, 
                            nr_of_img = 5, # set the number of iterations
                            polar = TRUE, 
                            filetype = "png", 
                            color = "#bd84bc", 
                            background_color = "#faedfa")



