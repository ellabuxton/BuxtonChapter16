
library(devtools)
library(roxygen2)
library(testthat)
library(usethis)

# Read in the data.  Do some cleaning/verification
Flagstaff_Weather <- read.csv('/Users/ellabuxton/Desktop/STA444/EllaBuxtonFlagWeather/data-raw/Pulliam_Airport_Weather_Station.csv') %>%  
  select(DATE, PRCP, SNOW, TMAX, TMIN) %>% # select certain cols
  drop_na()   # remove NA vals
colnames(Flagstaff_Weather)[2] <- 'RAIN'
# Save the data frame to the data/ directory as MaxTemp.rda
usethis::use_data(Flagstaff_Weather, overwrite = TRUE)
