#include <Rcpp.h>
using namespace Rcpp;

double my_function_A_cpp(NumericVector x) {
  int n = x.size();
  if (n < 2) {
    stop("Need at least two elements to compute variance");
  }

  double mean = Rcpp::mean(x);
  double sum_sq_diff = 0.0;
  
  for (int i = 0; i < n; ++i) {
    sum_sq_diff += (x[i] - mean) * (x[i] - mean);
  }

  return sum_sq_diff / n;
}

double my_function_B_cpp(NumericVector x) {
  int n = x.size();
  if (n < 1) {
    stop("Need at least one element to compute the mean");
  }
  double sum_total = 0;
  
  for (int i = 0; i < n; ++i) {
    sum_total += x[i];
  }
  
  return sum_total / n;
}