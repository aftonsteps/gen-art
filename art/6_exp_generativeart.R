## Experimenting with colors and patterns
## If you just use a runif * x for x, and runif * y for y, you get 
## a series of radii

## Not trig functions
iter <- "6"

# Set the paths
IMG_DIR <- paste0(iter, "/img/")
IMG_SUBDIR <- "everything/"
IMG_SUBDIR2 <- "favorites/"
IMG_PATH <- paste0(IMG_DIR, 
                   IMG_SUBDIR)

LOGFILE_DIR <- paste0(iter, "/logs/")
LOGFILE <- "logfile.csv"
LOGFILE_PATH <- paste0(LOGFILE_DIR, 
                       LOGFILE)

generativeart::setup_directories(IMG_DIR, 
                                 IMG_SUBDIR, 
                                 IMG_SUBDIR2, 
                                 LOGFILE_DIR)

## Set up the formula
example_formula <- list(
  x = quote(runif(1, -1, 10) * x_i),
  y = quote(runif(1, -1, 10) * y_i)
)

## Create!
generativeart::generate_img(formula = example_formula, 
                            nr_of_img = 5, # set the number of iterations
                            polar = TRUE, 
                            filetype = "png", 
                            color = "#bd84bc", 
                            background_color = "#faedfa")



