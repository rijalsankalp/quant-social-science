# Week 0 - in class R sessions

2+2

install.packages("devtools")
library(devtools)
require(devtools)

devtools::install_github("kosukeimai/qss-package",
                         build_vignettes = TRUE)
library(qss)

2+2
5/2

twoplustwo <- 2+2
twoplustwo

instructor <- "Weldzius"

twoplustwo/4
twoplustwo/instructor

class(twoplustwo)
class(instructor)

# How to see your directory:
getwd()
setwd("~/Library/CloudStorage/Dropbox/PSC4375")

# Let's read in some data! (from Kosuke Imai's github page)
library(tidyverse) # always remember to load the tidyverse package using library() or require()
Sweden <- read_csv("~/Library/CloudStorage/Dropbox/PSC4375/data/Sweden.csv") # this loads the data from the filepath and saves it as the object "Sweden"
Sweden # running this prints data in console
Sweden2 <- read_csv("data/Sweden.csv") # just another way to import data; note that my working directory 

glimpse(Sweden) # shows the first observations of all variables in dataframe
head(Sweden) # shows the first 6 rows of dataframe
summary(Sweden) # summarizes all variables

Sweden$netlife <- Sweden$births - Sweden$deaths # this creates a new variable that is the difference between births and deaths
summary(Sweden$netlife) # summarizes the variable "netlife"
dim(Sweden) # gives us the dimensions of the database
