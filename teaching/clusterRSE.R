##############################################################
# Author: Luke Sonnet (adapted from Mahmood Arai)
# Date: 2014 10 13
#
# Purpose: Contains a function that returns cluster robust SEs
##############################################################

## The arguments of the function are:
## fm: The fitted model object
## clusterName: A string with the name of the variable to cluster on
## df: The original data.frame, not the model.frame. This must include all of
##     of the data used for the model as well as the clusterName variable
## correction: can either be 'fancy', 'simple', or 'none' and sets which finite
##             sample correction to use. Default is 'fancy', the same as stata

## The values it returns are:
## $model: The original model object
## $vcovCL: The new cluster robust vcov matrix
## $coeftest: A test of the coefficients significance with the new vcov

clusterRSE <- function(fm, clusterName, df, correction = 'fancy'){
  
  library(sandwich)
  library(lmtest)
  
  ## Extract all of the clusters
  cl <- df[row.names(fm$model), cluster_name]
  ## Number of clusters
  m <- length(unique(cl))
  ## Number of covariates (minus the outcome var but plus one for constant)
  p <- ncol(fm$model)
  ## Number of observations 
  n <- nrow(fm$model)
  
  ## Set the finite sample correction
  if (correction == 'fancy') {
    dfc <- (m / (m - 1)) * ((n - 1) / (n - p))
  } else if (correction == 'simple') {
    dfc <- (m / (m - 1))
  } else if (correction == 'none') {
    dfc <- 1
  } else {
    print("Improper correction. Default 'fancy' was used.")
    print("Please choose correction 'fancy', 'simple', or 'none'")
    dfc <- (m / (m - 1)) * ((n - 1) / (n - p))
  }
  
  ## Compute the meat
  uj  <- apply(estfun(fm), 2, function(x) tapply(x, cl, sum))
  ## Finalize the cluster robust variance-covariance matrix
  vcovCL <- dfc*sandwich(fm, meat=crossprod(uj)/n)
  
  #print(dfc)
  
  out = list()
  out$model <- fm
  out$vcovCL <- vcovCL
  out$coeftest <- coeftest(fm, vcovCL)
  return(out)
}

## Example usage

#m <- lm(Sepal.Length ~ Sepal.Width + Petal.Length,
#        data=iris)

#m.crse <- clusterRSE(fm = m,
#                     clusterName = "Species",
#                     df = iris)

#m.crse$coeftest

## or with piping

#library(magrittr)
#m.crse <- lm(Sepal.Length ~ Sepal.Width + Petal.Length,
#             data=iris) %>%
#            clusterRSE(fm = .,
#                       clusterName = "Species",
#                       df = iris)
