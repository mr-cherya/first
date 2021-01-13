getwd()
setwd("C:/Users/chern/Documents/R/Part2Week3")
data_url <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2FProgAssignment3-data.zip"
download.file(data_url, "rprog_data_ProgAssignment3-data.zip")
unzip("rprog_data_ProgAssignment3-data.zip") 
of <- "rprog_data_ProgAssignment3-data.zip"
file.remove(of)
directory <- "Part2Week3"


## Read the outcome data
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)

## To make histogram of the 30-day death rates from heart attack
## (column 11 in the outcome dataset)
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11], main="30-day death rates from heart attack",
     xlab="Death", ylab="Frequency")



## From column to numeric
outcome <- lapply(outcome,as.numeric)
str(outcome)

     
     
     
     
     
