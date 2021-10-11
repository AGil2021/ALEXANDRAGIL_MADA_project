---
  title: "Proposal Project - Part1"
subtitle: "Mortality due to positive COVID-19 Cases and its relatioship with Comorbidities in GA"
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

# Raw Data
```{r}
#path to data
data_location <- here::here("datacovid","raw_data","Provisional_COVID-19_Deaths_by_Sex_and_Age.csv")
rawdata <- readxl::read_excel(data_location)
dplyr::glimpse(rawdata)
summary(rawdata)
```