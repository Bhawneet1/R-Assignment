data()
# to check all built in datasets

#View(to display entire dataset)
iris
View(iris)
install.packages("dplyr")
library(dplyr)
iris %>% View()


#str(structure of dataset)
str(iris)
iris

#head(),tail()

head(iris)
#first 6 entries

tail(iris)
#last 6 entries


#table() ategorial columns usually give frequency tab
table(iris$Species)
 
min(iris$Sepal.Width)
max(iris$Sepal.Width)
mean(iris$Sepal.Width)
range(iris$Sepal.Width)

