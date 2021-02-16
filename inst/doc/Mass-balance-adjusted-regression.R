## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(mbr)

## -----------------------------------------------------------------------------
p1Seasonal

## -----------------------------------------------------------------------------
str(pc3seasons)

## -----------------------------------------------------------------------------
lapply(pc3seasons, head, n = 10)

## -----------------------------------------------------------------------------
fit <- mb_reconstruction(
  instQ = p1Seasonal,
  pc.list = pc3seasons,
  start.year = 1750,
  lambda = 1,
  log.trans = 1:3
)

## -----------------------------------------------------------------------------
fit

## -----------------------------------------------------------------------------
# Create hold-out chunks
set.seed(24)
cvFolds <- make_Z(
  obs = 1922:2003,
  nRuns = 50, 
  frac = 0.25,
  contiguous = TRUE
)
# Run cross validation
cv <- cv_mb(
  instQ = p1Seasonal,
  pc.list = pc3seasons,
  cv.folds = cvFolds,
  start.year = 1750,
  lambda = 1,
  log.trans = 1:3,
  return.type = 'metric means'
)
# Round up to two decimal places
cv[, (2:6) := lapply(.SD, round, digits = 2), .SDcols = 2:6][]

