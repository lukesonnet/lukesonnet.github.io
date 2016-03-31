#' ---
#' title: "Using R in 200D"
#' author: "Luke Sonnet"
#' output:
#'   pdf_document:
#'     toc: yes
#'   html_document:
#'     theme: cerulean
#'     toc: yes
#' ---
#' 
#' 
#' This document is not an introduction to `R`, rather it is a introduction to the topics that are crucial to working in `R` in this class. There are countless resources for learning `R` and several of them are on the syllabus. If you are going to be a quantitative researcher trained in this department and working with other political scientists, you will probably need to know `R` from the ground up. Take your time and work through a text book.
#' 
#' # Working with data frames
#' 
#' Data frames are the workhorses of data analysis in `R`. We can easily load in some data from a csv file
## ------------------------------------------------------------------------
qog <- read.csv("http://lukesonnet.github.io/teaching/rmd/qog_data.csv")
head(qog)

#' 
#' Let's focus on different types of variables, creating new variables, basic plotting, and using `lm` and `glm`.
#' 
#' ## Working with variables
#' 
#' We can examine the structure of variables (columns) in a data frame.
#' 
## ------------------------------------------------------------------------
## Structure of the data frame
str(qog)

#' 
#' Country is a factor variable. This is useful when we want to plot data in groups. Here however, the factors, or groups, are countries and so there is only one observation per group. Let's greate a group variable that breaks ethnic fractionalization into above and below $0.5$ and call it $frac$.
#' 
## ------------------------------------------------------------------------
## create 1s and 0s using as.numeric
qog$ethFrac > 0.5
as.numeric(qog$ethFrac > 0.5)
## Turning that into a factor
qog$frac <- factor(as.numeric(qog$ethFrac > 0.5), labels = c("low", "high"))

#' 
#' Factors are great for plotting and are required sometimes. However, they can also be a pain and it may be easier to use character and numeric variables themselves.
#' 
## ------------------------------------------------------------------------
boxplot(qog$enep ~ qog$frac, ylab = "enep")

#' 
#' We can also transform variables.
#' 
## ------------------------------------------------------------------------
## Histogram of effective number of electoral parties
hist(qog$enep)
qog$lnenep <- log(qog$enep)
hist(qog$lnenep)

## Non-sensically adding variables together
qog$nonsense <- qog$enep + qog$mdm

#' 
#' ## Analyzing data
#' 
#' This section will just show some basic t-tests, OLS, and logistic regression.
#' 
#' Let's do a difference-of-means test for the effective number of paries with respect to high or low levels of fractionalization.
## ------------------------------------------------------------------------
t.test(x = qog$enep[qog$frac == "high"],
       y = qog$enep[qog$frac == "low"])

#' 
#' Let's run OLS to see if district magnitude and ethnic fractionalization correlate with the effective number of parties.
## ------------------------------------------------------------------------
## Additive model
lmAdd <- lm(enep ~ ethFrac + mdm,
            data = qog)
summary(lmAdd)
lmAdd$coefficients

#' 
#' Now let's run an interactive model and transform  Note that it will add the base terms automatically if you do the multiplication in the formula.
#' 
## ------------------------------------------------------------------------
## Interactive model
lmInt <- lm(enep ~ ethFrac * mdm,
            data = qog)
summary(lmInt)

plot(qog$mdm, qog$enep)
plot(log(qog$mdm), qog$enep)
## Quadratic with log
lmQuad <- lm(enep ~ ethFrac + log(mdm),
            data = qog)
summary(lmQuad)

#' 
#' I will demonstrate logistic regression with a dataset of grad student admissions.
#' 
## ------------------------------------------------------------------------
ad <- read.csv("http://www.stat.ucla.edu/~handcock/216/datasets/BINARYEX/binary.csv") 
head(ad)
logitOut <- glm(admit ~ gre + gpa + rank,
                data = ad,
                family = binomial)
summary(logitOut)

#' 
#' # Random numbers
#' 
#' Often it will be very important for use to generate simulated data or sample from existing data. We might need to do this to show the properties of an estimator using Monte Carlo simulation, for randomization inference, or for bootstrapping methods.
#' 
#' ## Setting seeds
#' 
#' When software generates random numbers it uses some algorithm that takes a *seed* as its starting point. Let's say we want to sample a number from the standard normal distribution. If we do this multiple times, we will get different answers.
## ------------------------------------------------------------------------
rnorm(1)
rnorm(1)

#' But if we start the pseudo-random number generator with the same seed, then the random numbers will be identical no matter how many times the code is run.
## ------------------------------------------------------------------------
set.seed(200)
rnorm(1)
set.seed(200)
rnorm(1)

#' This is very important when sharing code (such as in problem sets or in replication code for a paper you are writing). If any part of the code relies on sampling, simulated data, or any random process, not setting the seed will result in different numbers. Also note that setting the seed only works for the next line of code. You have to re-set it to some value each time you do some random process. Note that you do not need to use the same seed across different lines; remember that the goal is not to get the same numbers throughout your code, but rather to get the same numbers the next time you run your code.
## ------------------------------------------------------------------------
set.seed(123)
rnorm(1)
set.seed(456)
runif(1)

#' 
#' ## Simulating data from distributions
#' 
#' Often you will need to draw data from distributions in order. `R` has a host of distributions that are included in the default `stats` package that is always loaded when you start `R`. You can make draws from distributions generally using the `r` prefix on the distribuion name, such as `rnorm`. Below are some of the easy examples:
## ------------------------------------------------------------------------
## Normal Distribution
x <- rnorm(1000)
hist(x)
y <- rnorm(1000, mean = 3, sd = 3)
hist(y)
## Uniform Distribution
z <- runif(1000, min = 0, max = 1)
hist(z)
## Poisson Distribution
a <- rpois(1000, lambda = 3)
hist(a)
## Binomial Distribution
## When size = 1, binom = bernoulli
b <- rbinom(3, size = 1, prob = 0.5)
b
b <- rbinom(3, size = 3, prob = c(0.4, 0.4, 0.8))
b

#' Other distributions can be trickier, like the multinomial distribution. Let's say we have three classes, the first occurs with probability 0.1, the second with probability 0.6, and the third with probability 0.3.
## ------------------------------------------------------------------------
## Size is 1 because we only have one class per sample
m <- rmultinom(10, size = 1, prob = c(0.1, 0.6, 0.3))
## Each column is a sample, and each row is the number of successes for each class
m
## If we do it many times, roughly the right proportion of samples will go to
## each class
m <- rmultinom(1000, size = 1, prob = c(0.1, 0.6, 0.3))
rowMeans(m)

#' But normally when we sample from a multinomial distribution, we want to instead get back the class labels, such as `1`, `2`, or `3`, not a column with the corresponding row denoting which class the observation is in. To do this more directly, we can use `sample`.
#' 
#' ## Sampling
#' Sampling from a vector is very useful for randomization inference, bootstrapping, drawing from discrete distributions, and more. For example, if you wanted to draw from a discrete uniform distribution, you could choose a series of cutpoints and split up a continuous uniform distribution, or we can sample from the numbers $\{1, 2, \dots, 10\}$ with replacement.
## ------------------------------------------------------------------------
## Sample from discrete uniform from 1-10
1:10
u <- sample(1:10, size = 1000, replace = T)
hist(u, breaks = 20)

#' 
#' Let's return to our multinomial example where we have three classes, the first occurs with probability 0.1, the second with probability 0.6, and the third with probability 0.3. We can just draw from the vector `c(1, 2, 3)` with replacement and use the `prob` argument of `sample`
## ------------------------------------------------------------------------
m <- sample(1:3, size = 1000, replace = T, prob = c(0.1, 0.6, 0.3))
table(m)

#' 
#' What if we want to use sample to just scramble up a vector? Let's say we have some vector of 0s and 1s and we want to mix it all up. We should just sample WITHOUT replacement to reorder the vector. This will be used in randomization inference.
## ------------------------------------------------------------------------
x <- c(1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1)
xScramble <- sample(x)
xScramble

#' 
#' # Writing functions
#' 
#' Often times you will need a certain procedure to run multiple times with only slightly different inputs. While computing the mean of a vector or plotting two vectors can be done using built-in functions, many times you need to write custom functions that can be quite complex. Functions are named, have arguments, and return some value. For example, imagine we wanted to write a custom mean function. The name of our function will be `myMean`. The argument to our function will be `x`, which is some numeric vector. Lastly the value we return will be the average of this vector.
#' 
## ------------------------------------------------------------------------
myMean <- function(x) {
  xbar <- sum(x) / length(x)
  return(xbar)
}
myMean(c(1,2,3,4))

#' 
#' Let's try a more complicated example. sImagine we wanted to generate data using the following model $y = \beta x + \epsilon$ where $x \sim N(0, 1)$ and $\epsilon \sim N(0, \tau^2)$. Let's write a function that takes $n$, the number of observations, $\beta$, the effect of $x$ on $y$, and $\tau$, the noise in the model. Let's return the OLS estimate of $\beta$, $\hat\beta$.
#' 
## ------------------------------------------------------------------------
betaHat <- function(n, beta, tau) {
  ## Generate x
  x <- rnorm(n)
  ## Generate eps
  eps <- rnorm(n, sd = tau)
  ## Generate y
  y <- beta * x + eps
  
  ## Fit ols
  lmout <- lm(y ~ x)
  ## Extract betahat
  betahat <- lmout$coefficients["x"]
  
  return(betahat)
}

## An example
betaHat(n = 200, beta = 0.5, tau = 3)

#' 
#' Now we can use this function to see how well OLS performs under certain conditions. Let's run this function 100 times and compare the boxplots of the different values of $\hat\beta$.
#' 
## ------------------------------------------------------------------------
## Set some values (all besides tau)
its <- 100
N <- 200
trueBeta <- 2

## Create container for beta hats
betasLowNoise <- numeric(its)
betasHighNoise <- numeric(its)

for (i in 1:its) {
  betasLowNoise[i] <- betaHat(n = N, beta = trueBeta, tau = 1)
  betasHighNoise[i] <- betaHat(n = N, beta = trueBeta, tau = 3)
}

## Plot outcomes
boxplot(betasLowNoise, betasHighNoise)

#' 
#' As expected, when there is less noise in the model, the variance of $\hat\beta$ will be less, and we are more likely to get the an estimate closer to the true value. We can also repeatedly call functions using `replicate`, a very useful function. Also, setting the seed is easier with `replicate` than it is with for loops.
## ------------------------------------------------------------------------
set.seed(20160324)
betasLowNoise <- replicate(its, betaHat(n = N, beta = trueBeta, tau = 1))
set.seed(20160324)
betasHighNoise <- replicate(its, betaHat(n = N, beta = trueBeta, tau = 3))

## Plot outcomes
boxplot(betasLowNoise, betasHighNoise)

#' 
