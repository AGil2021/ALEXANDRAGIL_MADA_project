---
  title: "Proposal Project - Part1"
subtitle: "Relationship --> Sex (Female, Male) and Mortality Rate"
author: Alexandra Gil
date: "`r Sys.Date()`"
site: bookdown::bookdown_site
documentclass: article
output:
  bookdown::word_document2: 
  toc: false
number_sections: true
bookdown::html_document2: 
  toc: false
bibliography: ../references.bib
csl: ../apa.csl
---

```{r}
#load needed packages. make sure they are installed.
install.packages("dplyr")
library(readxl) #for loading Excel files
library(dplyr) #for data processing
library(here) #to set paths
```

# Project Question
This project has a main objective to examinate the relationship between sex (Female or Male) with the 15 leading causes of death by all states in the Unites States. 
The data was obtained from DATA.GOV; it has provisional estimates of death rates. Estimates are presented for each of the 15 leading causes of death plus estimates for deaths attributed to drug overdose, falls (for persons aged 65 and over), human immunodeficiency virus (HIV) disease, homicide, and firearms-related deaths.
[dataset](https://catalog.data.gov/dataset/nchs-vsrr-quarterly-provisional-estimates-for-selected-indicators-of-mortality)
- The 15 leading causes of death are:
  Alzheimer disease, Cancer, Chronic liver disease and cirrhosis, Chronic lower respiratory disease, COVID-19 (starting in 2020), Diabetes, Drug overdose, Falls (age 65 and over), Firearm-related injury, 
  Heart disease, HIV, Homicide, Hypertension, Influenza and pneumonia, Kidney disease, Parkinson disease, Pneumonitis due to solids and liquids, Septicemia, Stroke, Suicide, and Unintentional injuries.

Since this data includes all states in the United States, another good outcome could be do the analysis grouping the states into 5 regions according to their geographic position: the Northeast, Southwest, West, Southeast, and Midwest.
This dataset has information since 2017 to 2020, other possible outcome could be the analysis of the causes of death before COVID-19 and during (2020).
The data also has other variables that could be a possible confounder, such as age because it is associate with the sex and with the type of causes of death, such as chronic diseases

# Raw Data
```{r}
#path to data
data_location <- here::here("data","raw_data","NCHS_-_VSRR_Quarterly_provisional_estimates_for_selected_indicators_of_mortality.csv")
rawdata <- readxl::read_excel(data_location)
dplyr::glimpse(rawdata)
summary(rawdata)
```