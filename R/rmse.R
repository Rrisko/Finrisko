#' Root mean squared error
#'
#' Returns root mean squared error for given vectors of observed and predicted values
#' @param y_hat Vector of predicted values
#' @param y_actual Vector of observed/actual values
#' @keywords RMSE, Root mean squared error, regression,
#' @export
#' @examples
#' rmse()
rmse = function(y_hat, y_actual) {
  return(sqrt(mean((y_hat - y_actual) ^ 2)))
}
