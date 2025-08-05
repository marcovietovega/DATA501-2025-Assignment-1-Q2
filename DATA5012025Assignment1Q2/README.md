# DATA501 Assignment 1 - Question 2

This R package calculates statistics using C++ functions for DATA501 Assignment 1 - Question 2.

## How to install

You need the devtools package installed then you have two options:

**Option 1: Install directly from GitHub**

```r
# Install with vignettes
devtools::install_github("marcovietovega/DATA501-2025-Assignment-1-Q2", subdir = "DATA5012025Assignment1Q2", build_vignettes = TRUE)
```

**Option 2: Clone and install locally**

```bash
git clone https://github.com/marcovietovega/DATA501-2025-Assignment-1-Q2.git
cd DATA501-2025-Assignment-1-Q2/DATA5012025Assignment1Q2
```

Then in R:

```r
# Install package and vignette
devtools::install(build_vignettes = TRUE)
```

## How to use

Make sure the data file "Data501_Dataset_Assignment1.csv" is in your working directory.

```r
library(DATA5012025Assignment1Q2)

calculate_statistics() # Using default parameters (filename and student number 255)

# Or specify your own parameters
calculate_statistics("Data501_Dataset_Assignment1.csv", 333)
```

This will print the results of Function A, Function B, the mean, and the variance.
