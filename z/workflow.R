#' @name workflow.R
#' @title Example Workflow for `demo_tool` package functions
#' @author Tim Fraser, your names here...
#' @description Script for test workflow of `demo_tool` package functions.


mypackage = "demo_tool"
# Unload your package and uninstall it first.
unloadNamespace(mypackage); remove.packages(mypackage)
# Auto-document your package, turning roxygen comments into manuals in the `/man` folder
devtools::document(".")
# Load your package temporarily!
devtools::load_all(".")

# Test out our function

# Get series system probability at each time t
demo_tool::get_prob(t = c(2,4,5,6), lambdas = c(0.001, 0.02), type = "series")
 
# Get parallel system probability at each time t
demo_tool::get_prob(t = c(2,4,5,6), lambdas = c(0.001, 0.02), type = "parallel")

# Just think: you could make many functions,
# outputting vectors, data.frames, ggplot visuals, etc.
# So many options!

# When finished, remember to unload the package
unloadNamespace(mypackage); remove.packages(mypackage)


# Then, when ready, build and install the package!
# For speedy build, use binary = FALSE and vignettes = FALSE
devtools::build(".", binary = FALSE, vignettes = FALSE)
