#' @name workflow.R
#' @title Example Workflow for `demo_tool` package functions
#' @author Tim Fraser, your names here...
#' @description Script for test workflow of `demo_tool` package functions.

# Set name of package, for ease
mypackage = "demo_tool"
# Unload your package and uninstall it first.
unloadNamespace(mypackage); remove.packages(mypackage)
# Auto-document your package, turning roxygen comments into manuals in the `/man` folder
devtools::document(".")
# Load your package temporarily!
devtools::load_all(".")

# Test out our functions

# Add 1 to x
demo_tool::plus_one(x = 1)
# Add 1 to a vector of x values
demo_tool::plus_one(x = c(1,2,3,4))

# Get series system probability at each time t
demo_tool::get_prob(t = c(2,4,5,6), lambdas = c(0.001, 0.02), type = "series")
 
# Get parallel system probability at each time t
demo_tool::get_prob(t = c(2,4,5,6), lambdas = c(0.001, 0.02), type = "parallel")

# Just think: you could make many functions,
# outputting vectors, data.frames, ggplot visuals, etc.
# So many options!

# When finished, remember to unload the package
unloadNamespace(mypackage); remove.packages(mypackage)

# Always a good idea to clear your environment and cache
rm(list = ls()); gc()

# Then, when ready, build and install the package!
# For speedy build, use binary = FALSE and vignettes = FALSE
devtools::build(".", binary = FALSE, vignettes = FALSE)
