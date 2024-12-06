```r
# This code attempts to subset a data frame using a character vector, but
# it fails silently if the column names don't exactly match.

df <- data.frame(col1 = 1:3, Col2 = 4:6)
cols_to_select <- c("col1", "Col2") # Note the capitalization difference
subset_df <- df[, cols_to_select]
print(subset_df) # Only 'col1' will be selected due to case sensitivity

# The issue here is that R's subsetting is case-sensitive by default for column names.
# The code silently drops the intended column 'Col2' without any warning or error.
```