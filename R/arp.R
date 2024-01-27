#' ARP: Accuracy, Recall, Precision
#'
#' Computes accuracy metrics of a binary classification model: Accuracy, Recall, Precision. Returns a matrix. Kindly provided by Agata Dziwok.
#' @param y_hat Predicted values
#' @param y_actual Actual/observed values
#' @keywords Classification, Accuracy, Recall, Precision
#' @export
#' @examples
#' arp()
arp <- function(y_hat, y_actual){
  TP <- sum(y_actual == y_hat & y_actual)
  TN <- sum(y_actual == y_hat & !y_actual)
  FP <- sum(y_actual & y_actual != y_hat)
  FN <- sum(!y_actual & y_actual != y_hat)
  accuracy <- mean(y_actual == y_hat)
  recall <- TP/(FN + TP)
  precision <- TP/(FP + TP)
  M <- c("Accuracy" = accuracy, "Recall" = recall, "Precision" = precision)
  return(M)
}