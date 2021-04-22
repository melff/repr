library(testthat)
library(repr)

# Use fancy output
options(repr_fancy=TRUE)
# Do not embed htmlwidgets into iframes
options(htmlwidgets_in_iframe=FALSE)

test_check('repr')
