rainfall <- read.csv("D:\\Learn\\STAT1371\\WEEK 3\\rainfall.csv")
class97 <- read.csv("D:\\Learn\\STAT1371\\WEEK 2\\class97.csv")
library(skimr)
skimr::skim(class97$height)
summary(class97$height)

library(dplyr)
class97 %>%
  +     count(height)

library(tidyverse)
ggplot() + geom_histogram(data = class, aes(x = height))
n <- 158
x <- 1:n
set.seed(6)
options(width = 72) # render output within width of the slide
sample(x)
