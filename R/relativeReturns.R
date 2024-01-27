#' Relative returns
#'
#' Returns a vector of relative returns for a given vector of asset prices
#' @param vec Vector of asset prices
#' @keywords Finance, Return, Relative return
#' @export
#' @examples
#' relativeReturns()
relativeReturns <- function(vec){
  return_vec <- c()
  for (i in (1:(length(vec))-1))
  {
    ret <- (vec[i+1] - vec[i]) / vec[i]
    return_vec <- c(return_vec, ret)
  }
  return (return_vec)
}
