seq(1.3,4.9,by=0.3)

rep(1:4,5)

seq(14,0,by=-2)

rep(c(5,12,13,20),each=2)

x<-iris
class(iris)

nrow(iris)
ncol(iris)
is.factor(iris)
is.factor(iris$Species)
factor(iris$Species)
levels(iris$Species)

mean(x$Sepal.Width)
sd(x$Sepal.Width)
for(i in 1:150){
  x$Calyx[i]=if(x$Sepal.Length[i]<5){"Short"}else{"Long"}
}
print(head(x))


y<-mtcars
print(head(y))
print(colnames(y))
y$cyl<5
head(y,10)

install.packages("dplyr")
library(dplyr)
y %>% filter(am=="Honda")
y %>% select(start.with="Honda")
