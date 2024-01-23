#### Preamble ####
# Purpose: Clean original toronto crime report dataset
# Author: Ben Li
# Data: 22 January 2023
# Contact: dailin.li@mail.utoronto.ca
# Pre-requisites: 
# 01-download_data.R


#### Workspace setup ####

library(tidyverse)
library(janitor)
library(dplyr)

#### Read in raw data ####
raw_crime_data = 
  read_csv(
    file = "inputs/data/toronto_crime.csv",
    show_col_types = FALSE
  )

#### Data cleaning ####
toronto_crime_clean <-
  clean_names(raw_crime_data) 

head(toronto_crime_clean)

# select interested varibales
toronto_crime_clean = 
  toronto_crime_clean |>
  select(
    report_year,
    subtype,
    sex,
    age_group
  )



# change the interested column names
toronto_crime_clean <- toronto_crime_clean %>% 
  rename(
    year = report_year,
    crime_type = subtype)

# write clean data
write_csv(
  x = toronto_crime_clean,
  file = "toronto_crime_clean.csv"
)


