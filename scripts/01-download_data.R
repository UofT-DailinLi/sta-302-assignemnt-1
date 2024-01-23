#### Preamble ####
# Purpose: Download dataset of Police Annual Statistical Report - Victims of Crimes
# Author: Ben Li
# Date: 22 January 2024
# Contact: dailin.li@mail.utoronto.ca
# Prerequisites: none


#### Workspace setup #### 
install.packages("opendatatoronto")
library(opendatatoronto)
library(tidyverse)

# download data
toronto_crime <-
  list_package_resources("police-annual-statistical-report-victims-of-crime") |>
  filter(name == "Victims of Crime.csv") |>
  get_resource()

# write data
write_csv(
  x = toronto_crime,
  file = "toronto_crime.csv"
)

head(toronto_crime)