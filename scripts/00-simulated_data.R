#### Preamble ####
# Purpose: Simulate dataset of Toronto crime reports
# Author: Ben Li
# Data: 22 January 2023
# Contact: dailin.li@mail.utoronto.ca


set.seed(123) # Setting a seed for reproducibility

# Define the possible values for each variable
crime_type <- c("Sexual Violation", "Assault", "Robbery", "Other")
years <- c(2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022)
age_group <- c("Adult", "Child", "Unknown", "Youth")
sex <- c("M", "F", "U")

# Generate random samples for each variable
crime_sample <- sample(crime_type, size = 1110, replace = TRUE)
year_sample <- sample(years, size = 1110, replace = TRUE)
age_sample <- sample(age_group, size = 1110, replace = TRUE)
sex_sample <- sample(sex, size = 1110, replace = TRUE)

# Combine into a data frame
simulated_data <- data.frame(Year = year_sample, 
                             Crime_Type = crime_sample,
                             Sex = sex_sample, 
                             Age_Group = age_sample )

# View the first few rows of the dataset
head(simulated_data)
