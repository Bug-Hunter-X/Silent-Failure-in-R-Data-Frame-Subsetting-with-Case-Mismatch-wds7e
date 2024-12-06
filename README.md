# R Subsetting Bug: Silent Failure with Case-Insensitive Column Names

This repository demonstrates a subtle but common bug in R: the silent failure when subsetting data frames using character vectors where column names have different capitalization. R's subsetting mechanism is case-sensitive by default.  This leads to unexpected behavior without any warning or error.

The `bug.r` file contains the problematic code snippet. The `bugSolution.r` file demonstrates how to fix this using either `match.arg()` or case-insensitive matching techniques.

## How to Reproduce

1. Clone this repository.
2. Open `bug.r` and run the code. Observe that only 'col1' is selected, despite intending to select both 'col1' and 'Col2'.
3. Examine `bugSolution.r` to see how to correct the issue.
