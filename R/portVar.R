#' Portfolio Variance
#'
#' Calculates variance of a portfolio, given its assets' covariance matrix and weights
#' @param cov_m Covariance matrix of portfolio's assets' returns
#' @param w_vec Vector of assets' weights
#' @keywords Variance, Finance, Portfolio
#' @export
#' @examples
#' portVar()
portVar <- function(cov_m, w_vec){
  cov_m <- as.matrix(cov_m)
  w_vec <- as.matrix(w_vec)
  return(t(w_vec) %*% cov_m %*% w_vec)
}