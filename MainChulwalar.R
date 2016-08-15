# Author: Celia Taylor

## remove all items in environment
## rm(list = ls())
## load gdata and plyr package if not already
require(gtools)
require(gdata)
require(plyr) #Added by Monnie McGee

## Set directory variables
## Set directory so would run on CTaylor machine
maind <- "/Users/Celia Taylor/Documents/GitHub/MSDS6306402CaseStudy10Chulwalar"
datad <- paste(maind, "DATA", sep = "/")
analysisd <- paste(maind, "ANALYSIS", sep = "/")

setwd(datad)
## Load Data
source("LoadData.R")

## Clean Data
source("CleanData.R")

setwd(analysisd)
source("AnalyzeData.R")

