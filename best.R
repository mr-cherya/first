## Read the outcome data
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)

## From column to numeric
outcome <- lapply(outcome,as.numeric)
str(outcome)

best <- function(state, outcome) {
     outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
     head(outcome)
     
     
     
}