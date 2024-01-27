#' Beta
#'
#' Computes beta, given assets's return, return of tangency portfolio and riskless return
#' @param ret A return of an asset
#' @param t_ret Return of the tangency portfolio
#' @param rf_ret Return of risk free asset
#' @keywords Beta, Finance, Tangency Portfolio
#' @export
#' @examples
#' Beta()
Beta <- function(ret, t_ret, rf_ret){
  return((ret - rf_ret) / (t_ret - rf_ret))
}