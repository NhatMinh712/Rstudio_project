#STAT1371 Tutorial week 4
#Question 1
#a
x <- 1:6
sample(x, 6, replace = TRUE)
#b
sample(x, 6, replace = FALSE)
#c
sample(1:52, )
#d
sample(x, 1)
#e
sample(x, 6, replace = TRUE)

#Question 2
#a
install.packages("babynames")
library(babynames)
library(tidyverse)
nrow(babynames)
#b
ggplot(babynames) +
  geom_line(aes(x= year, y = prop))
#Question 3
#a
select(babynames, name, sex)
select(babynames, name, year)
select(babynames, name, sex, year)
#b
select(babynames, -c(n, prop))
select(babynames, -c(year, sex, prop))
select(babynames, name:n)
select(babynames, starts_with("n"))
select(babynames, ends_with("n"))
#c
filter(babynames, 10 < n & n < 20) #or filter(babynames, 10 < n, n < 20)
filter(babynames, name %in% c("Acura", "Lexus", "Yugo"))
filter(babynames, n %in% c(5,6,7,8,9))
#d
filter(babynames, n == 5 | n == 6 , year == 1880, name == "Sea")
babynames %>%
  filter(name == "Samuel", sex == "M") %>%
  select(year, prop) %>%
  ggplot() + 
  geom_line(aes(x = year, y = prop)) +
  labs(title = "Popularity of the boy name Samuel")
