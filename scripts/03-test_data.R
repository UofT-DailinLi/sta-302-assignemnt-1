#### Preamble ####
# Purpose: Tests cleaned toronto crime data
# Author: Ben Li
# Date: 25 January 2024
# Contact: dailin.li@mail.utoronto.ca
# Pre-requisites: downloaded and cleaned Toronto crime data


#### Workspace setup ####
# install.packages("tidyverse")
# comment out the installation after tidyverse has been installed
library(tidyverse)

#### Test data ####
crime_data <- read_csv("inputs/data/toronto_crime_clean.csv")

crime_data$year|> min() >= 2014
crime_data$year |> max() <= 2022
crime_data$year |> class() == 'numeric'
