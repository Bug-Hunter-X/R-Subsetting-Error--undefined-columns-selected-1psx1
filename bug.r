```r
# This code attempts to subset a data frame using a character vector
# containing column names that do not exist in the data frame.

df <- data.frame(A = 1:3, B = 4:6)
cols_to_select <- c("A", "C", "D")
result <- df[, cols_to_select]
```