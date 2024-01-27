#' Tangency weights
#'
#' Returns a vector of assets' weights in a tangency portfolio
#' @param cov_m Covariance matrix of assets' returns
#' @param returns_v Vector of assets' returns
#' @param rf_rate Risk free rate
#' @keywords Finance, Tangency portfolio
#' @export
#' @examples
#' tangencyWeights()
tangencyWeights <- function(cov_m,returns_v,rf_rate){
  risk_premia <- returns_v - rf_rate
  weights <- solve(cov_m,risk_premia)
  return(weights/sum(weights))
}