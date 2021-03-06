% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mass-balance-optim.R
\name{lsq_mb}
\alias{lsq_mb}
\title{Least square with mass balance penalty}
\usage{
lsq_mb(hat, obs, lambda, mus, sigmas, log.seasons, log.ann, N, sInd)
}
\arguments{
\item{hat}{A vector of estimated flow in the transformed space.}

\item{obs}{A vector of observed flow in the transformed space.}

\item{lambda}{Penalty weight.}

\item{mus}{A vector of means, one for each target.}

\item{sigmas}{A vector of the standard deviations, one for each target.}

\item{log.seasons}{A vector containing the indices of the seasons that are log-transformed.}

\item{log.ann}{TRUE if the annual reconstruction is log-transformed.}

\item{N}{The number of targets (number of seasons plus one for the annual reconstruction).}

\item{sInd}{Indices of the seasons, i.e, 1...N-1}
}
\value{
Objective function value: least squares plus a penalty term.
}
\description{
Least square with mass balance penalty
}
