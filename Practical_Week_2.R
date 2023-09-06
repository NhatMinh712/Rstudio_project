#Practical Solutions Week 2: Introduction to R/RStudio
#Q1
#e
#• dim: It gives the dimension, i.e. the number of rows and columns, of the dataset.
#• str, glimpse: Both functions work similarly and give a glimpse of the dataset.
#• head and tail: They return the top and bottom parts of a vector/matrix/table/data frame.
#g
# Obtain the frequencies and a bar chart of tutetime.
class97 %>%
  count(tutetime) %>%
  arrange(-n)
#Class number 7 has the most students in it.
ggplot(class97) +
  geom_bar(aes(x=tutetime))
#h:
#Obtain a cross-tab (with count())
class97 %>%
  count(tutetime, sex)
#Clustered barchart of tutetime and sex.
ggplot(class97) +
  geom_bar(aes(x = tutetime, fill = sex), position = "dodge")
#Class number 4 has the biggest disparity between the two genders.





















