# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

timesTwo <- function(x) {
    .Call(`_gammaextremes_timesTwo`, x)
}

#' Computes cross moment in trawl gamma-exponential mixture
#'
#' @param xs Grid to integrate on.
#' @param delta Grid mesh size
#' @param beta GPD scale parameter in the sense of Noven et al.
#' @param b_oh - alpha * mu(A inter A_h) / mu  (A)
#' @param b_o_exc_h - alpha * mu(A excl. A_h) / mu  (A)
#'
#' @export
CrossMoment <- function(xs, delta, beta, b_oh, b_o_exc_h) {
    .Call(`_gammaextremes_CrossMoment`, xs, delta, beta, b_oh, b_o_exc_h)
}

FirstMoment <- function(xs, delta, beta, b_oh, b_o_exc_h) {
    .Call(`_gammaextremes_FirstMoment`, xs, delta, beta, b_oh, b_o_exc_h)
}

SquareMoment <- function(xs, delta, beta, b_oh, b_o_exc_h) {
    .Call(`_gammaextremes_SquareMoment`, xs, delta, beta, b_oh, b_o_exc_h)
}

#' @export
CppCaseZeroZero <- function(alpha, beta, kappa, B1, B2, B3) {
    .Call(`_gammaextremes_CppCaseZeroZero`, alpha, beta, kappa, B1, B2, B3)
}

#' @export
CppCaseOneZero <- function(xs, alpha, beta, kappa, B1, B2, B3) {
    .Call(`_gammaextremes_CppCaseOneZero`, xs, alpha, beta, kappa, B1, B2, B3)
}

#' @export
CppCaseOneOne <- function(xs, alpha, beta, kappa, B1, B2, B3) {
    .Call(`_gammaextremes_CppCaseOneOne`, xs, alpha, beta, kappa, B1, B2, B3)
}

#' @export
CppCaseSeparator <- function(xs, alpha, beta, kappa, B1, B2, B3) {
    .Call(`_gammaextremes_CppCaseSeparator`, xs, alpha, beta, kappa, B1, B2, B3)
}

