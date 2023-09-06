#Practical Solution Week 3: Descriptive Statistics
#Q1
#a
library(tidyverse)
class97 <- read_csv("class97.csv")
summary(class97$height)
#Alternatively, we can use the skimr package and
skimr::skim(class97$height)
#or with
table(is.na(class97$height))
#b
#Histogram
ggplot(data = class97) +
  geom_histogram(aes(x = height))
#Boxplot
ggplot(data = class97) +
  geom_boxplot(aes(y = height)) + coord_flip()
#c
ggplot(data = class97) +
  geom_boxplot(aes(y = height, x = sex)) +
  coord_flip()

#Q2
#a
#The single-stem version:
stem(rainfall$max_daily_rainfall)
#The double-stem version:
stem(rainfall$max_daily_rainfall, scale=2)
#b
ggplot(rainfall, aes(x = max_daily_rainfall)) +
  geom_boxplot() +
  coord_flip()
#c
skimr::skim(rainfall$max_daily_rainfall)
#d: Obtain the 10% trimmed mean of the data.
mean(rainfall$max_daily_rainfall, trim = 0.10)

#Q3
#a
ggplot(data = diamonds) +
  geom_bar(aes(x = cut))
#b
Use geom_col() to map the heights of the bars not to counts, but to a variable in the data set. col is
short for column.
#c: The colour aesthetic controls the outline of each bar in your bar plot. To colour the interior of each bar, we have to use the fill aesthetic:
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))
#d
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut), position = "dodge")










