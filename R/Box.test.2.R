Box.test.2 <- function(x, nlag, type = c("Box-Pierce", "Ljung-Box"), fitdf = 0, decim=8) {
 Box.test.inv = function(lag1, x, type = c("Box-Pierce", "Ljung-Box"), fitdf = 0) {
   stats::Box.test(x, lag1, type = c("Box-Pierce", "Ljung-Box"), fitdf = fitdf)$p.value
 }
 x <- as.vector(x)
 nlag <- as.matrix(nlag)
 aa <- round(apply(nlag, 1, Box.test.inv, x), digits = decim)
 bb <- cbind(as.integer(nlag), as.matrix(aa))
 colnames(bb) <- c("Retard", "p-value")
 bb
}