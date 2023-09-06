babynames %>%
  filter(name == "Samuel", sex == "M") %>%
  summarise(total = sum(n), max = max(n), mean = mean(n))

babynames %>% 
  filter(name == "Khaleesi") %>% 
  summarise(year = first(year)select(babynames, name, sex))

babynames %>% 
  summarise(n = n(), distinct = n_distinct(name))

# Example 1
babynames %>%
  group_by(year, sex) %>%
  summarise(total = sum(n)) %>%
  summarise(total = sum(total))

# Example 2
babynames %>%
  group_by(year, sex) %>%
  ungroup()
# Example 3
babynames %>%
  group_by(year, sex) %>%
  group_by(name)

babynames %>% 
  group_by(name, sex) %>% 
  summarise(total = sum(n)) %>% 
  arrange(desc(total))

tops <- babynames %>%
  group_by(name, sex) %>%
  summarise(total = sum(n)) %>%
  ungroup() %>%
  slice_max(total, n = 10)
top_10 <- semi_join(babynames, tops, by = c("name", "sex"))
# semi_join(x,y) return all rows from x with a match in y.

#2d
prop <- top_10 %>% 
  ggplot() +
  geom_line(aes(x=year, y=prop, colour=name))


(class97 <- read_csv("D:\\Learn\\STAT1371\\WEEK 2\\class97.csv"))
ggplot(class97) +
  geom_bar(aes(x=tutetime))




