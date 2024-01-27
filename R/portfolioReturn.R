#' Portfolio Return
#'
#' Outputs a return of a portfolio given a vector of its assets' returns and a vector of their respective weights
#' @param w_vec Vector of assets' weights
#' @param return_vec Vector of assets' returns
#' @keywords Return, Finance
#' @export
#' @examples
#' portfolioReturn()
portfolioReturn <- function(w_vec, return_vec){return(sum(w_vec*return_vec))}
