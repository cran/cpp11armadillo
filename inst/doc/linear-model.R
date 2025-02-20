## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
x <- cbind(1, mtcars$wt)
y <- mtcars$mpg

head(x)

head(y)

dim(x)

length(y)

## -----------------------------------------------------------------------------
x <- model.matrix(mpg ~ wt, data = mtcars)
y <- model.response(model.frame(mpg ~ wt, data = mtcars))

## -----------------------------------------------------------------------------
solve(t(x) %*% x) %*% t(x) %*% y

## -----------------------------------------------------------------------------
lm(mpg ~ wt, data = mtcars)$coefficients

## -----------------------------------------------------------------------------
x <- model.matrix(mpg ~ wt, data = mtcars)
y <- log(mtcars$mpg)

## ----warning=FALSE------------------------------------------------------------
glm(mpg ~ wt, data = mtcars, family = poisson(link = "log"))$coefficients

