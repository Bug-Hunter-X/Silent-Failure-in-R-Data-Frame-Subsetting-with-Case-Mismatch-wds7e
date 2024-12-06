```r
# Solution using match.arg() to handle potential mismatches gracefully

df <- data.frame(col1 = 1:3, Col2 = 4:6)
cols_to_select <- c("col1", "Col2")

# Use match.arg() for case-insensitive matching.  This will generate an error
# if a name is not found.
selected_cols <- sapply(cols_to_select, function(x) match.arg(tolower(x), tolower(names(df))))
subset_df <- df[, selected_cols]
print(subset_df)

#Alternative solution using case-insensitive matching with grep
selected_cols <- grep(paste0(cols_to_select,collapse = '|'),names(df),ignore.case = TRUE)
subset_df <- df[,selected_cols]
print(subset_df)
```