```r
library(dplyr)

# Improved code using dplyr to handle missing columns gracefully
df <- data.frame(A = 1:3, B = 4:6)
cols_to_select <- c("A", "C", "D")

result <- df %>%
  select(all_of(cols_to_select))

#Handle missing columns by keeping only those present
result <- df %>% select(any_of(cols_to_select))

#If you want to include columns that might be missing but fill them with NAs
result <- df %>% select(!!!syms(cols_to_select))
```