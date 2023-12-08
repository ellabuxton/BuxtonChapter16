#' A function that takes a vector of numbers and returns Fizz if a number is
#' evenly divisible by 3 and/or Buzz if that number is evenly divisible by 5.
#'
#' @param x A vector with real numbers
#' @return The Fizz if the number in \code{x} is divisible by 3 and or Buzz if \code{x} is divisible by 5
#' @examples
#' FizzBuzz(c(1,2,3))
#' FizzBuzz(5)
#' @export
FizzBuzz <- function(x){
  output <- NULL
  for( i in 1:length(x) ){
    if(x[i] <= 0){stop('Error Message')} # cannot compute if <= 0
    if(is.infinite(x[i]) == TRUE){stop('Error Message')} # cannot compute if inf
    if( x[i] %% 3 == 0 & x[i] %% 5 != 0 ){ output[i] <- "Fizz"} # div by 3 only
    if( x[i] %% 5 == 0 & x[i] %% 3 != 0 ){output[i] <- "Buzz"} # div by 5 only
    if(x[i] %% 3 == 0 & x[i] %% 5 == 0){output[i] <- "FizzBuzz"} # div by 3 & 5
    if(x[i] %% 3 != 0 & x[i] %% 5 != 0){output[i] <- x[i]} # not div by 3 or 5
  }
  return(output)
}
