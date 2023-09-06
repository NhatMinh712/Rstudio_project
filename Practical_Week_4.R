#Practical Week 4: Sampling & Working with Data (Part I)
#Q1
#a
sample(1:6, 6, replace = T)
#b
sample(1:6, 6, replace = F)
#c
sample(1:52, 7, replace = F)
#d
sample(1:6, 1, replace = T)
#e
sample(1:6, 6, replace = T)

#Q2
#a
library(tidyverse)
library(babynames)
NROW(babynames)
#b:
#The code will plot the popularity of every name in the dataset.
#c
#The plot in (c) is for a single name and gender but the plot in (b) is for every combination in the dataset. We will need to restrict/select/isolate/filter out the appropriate name and gender to produce this plot.

#Q3
#a
select(babynames, name)
select(babynames, name, year)
select(babynames, year, sex, name, n)
#c
filter(babynames, prop >= 0.08)
filter(babynames, name == "Khaleesi")
filter(babynames, name == "Sea")
#d
filter(babynames, name == "Sea", sex == "F")
filter(babynames, n == 5 | n == 6, year == 1880)
filter(babynames, name %in% c("Acura", "Lexus", "Yugo"))
#e
filter(babynames, 10 < n, n < 20)
filter(babynames, n %in% c(5, 6, 7, 8, 9))

#Q4
babynames %>%
  filter(name == "Minh", sex == "M") %>%
  select(year, prop) %>%
  ggplot() +
  geom_line(aes(x= year, y = prop)) +
  labs(title = "Popularity of the boy name Minh")

