# Explore
# Clean
# Manipulate
# Describe
# Visualize
# Analyse

# install.packages("tidyverse")
library(tidyverse)
data()
?Starwars
dim(starwars)
str(starwars)
glimpse(starwars)
View(starwars)
head(starwars)
tail(starwars)
starwars$name

attach(starwars)

names(starwars)
length(starwars)
class(hair_color)
length(hair_color)
unique(hair_color)

View(sort(table(hair_color),decreasing = TRUE))
barplot(sort(table(eye_color), decreasing = TRUE))
starwars %>%
  select(hair_color) %>%
  count(hair_color) %>%
  arrange(desc(n)) %>%
  View()

starwars[is.na(hair_color),])

View(starwars[is.na(hair_color),])

is.na(hair_color)

class(height)
length(height)
summary(height)
boxplot(height)
hist(height)



  

