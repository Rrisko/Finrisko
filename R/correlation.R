#' Correlation
#'
#' Returns correlation matrix given covariance matrix
#' @param cov_m Covariance matrix
#' @keywords Correlation, Covariance, Statistics, slovakgirl
#' @export
#' @examples
#' correlation()
correlation <- function(cov_m){
  output_m <- cov_m
  for (i in 1:ncol(cov_m)){
    for (j in 1:ncol(cov_m)){
      output_m[i,j] <- cov_m[i,j] / (sqrt(cov_m[i,i]) * sqrt(cov_m[j,j]))
    }
  }
  return(output_m)
}