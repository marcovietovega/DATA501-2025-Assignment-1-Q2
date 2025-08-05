
#' @useDynLib DATA5012025Assignment1Q2, .registration = TRUE
#' @importFrom Rcpp sourceCpp
NULL

my_function_A <- function(x) {
  if (!is.numeric(x)) {
    stop("Input must be numeric")
  }
  my_function_A_cpp(x)
}


my_function_B <- function(x) {
  if (!is.numeric(x)) {
    stop("Input must be numeric")
  }
  my_function_B_cpp(x)
}

#' Calculate Statistics from a Dataset
#'
#' Reads a CSV file, adds student number, and calculates all required statistics.
#' Prints the results of Function A, Function B, mean, and variance.
#'
#' @param filename Path to the CSV file containing the dataset.
#' @param student_number Student number to add to the data (default: 255).
#' @importFrom utils read.csv
#' @importFrom stats var
#' @export
calculate_statistics <- function(filename = "Data501_Dataset_Assignment1.csv", student_number = 255) {
  sample2 <- read.csv(filename) + student_number
  
  sample3 <- as.numeric(sample2[[1]])
  
  function_A_result <- my_function_A(sample3)
  function_B_result <- my_function_B(sample3)
  mean_result <- mean(sample3)
  variance_result <- var(sample3)
  
  print(paste("Function A Results:", function_A_result))
  print(paste("Function B Results:", function_B_result))
  print(paste("Mean:", mean_result))
  print(paste("Variance:", variance_result))
}