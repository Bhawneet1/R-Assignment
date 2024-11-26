x <- runif(100, min = 1, max = 5)
x

y <- x^2 + runif(100)
y

plot(x)
plot(x, main = "X data")
plot(x, main = "X data",xlab = "X Axis", ylab="Y Axis")

plot(x, y, main = "Scatter plot",xlab = "X Axis", ylab="Y Axis")

png(filename="MyPlot.png")
plot(x, y, main = "Scatter plot",xlab = "X Axis", ylab="Y Axis")
dev.off()
getwd() 

x1 <- rnorm(10,sd=2)
x1
x2 <- rnorm(10,sd=3)
x2
x3 <- rnorm(10,sd=4)
x3

df <- data.frame(x1,x2,x3)
plot(df[,1:3])

x <- c(2,7,3,2,4,1,8,2,4,2,8,-5,4)
min(x)
max(x)
sum(x)
sd(x)

mean(x)
median(x)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

getmode(x)

x <- c(2,7,3,2,4,1,8,2,4,2,8,-5,4)
y <- c(6,3,8,1,3,6,8,2,3,5,8,4,-6)
z <- round(runif(13,min=-10, max=10),0) 

var(x, y)

cov(x, y, method = "pearson")
cov(x, y, method = "kendall")
cov(x, y, method = "spearman")


cor(x, y, method = "pearson")
cor(x, y, method = "kendall")
cor(x, y, method = "spearman")


df <- data.frame(x,y,z)
pairCor <- cor(df,use="pairwise",method="pearson")
pairCor


install.packages("corrplot")
library(corrplot)
corrplot(pairCor)

x <- c(173, 169, 176, 166, 161, 164, 160, 158, 180, 187)
y <- c(80, 68, 72, 75, 70, 65, 62, 60, 85, 92) 
linearModel <- lm(y ~ x)
plot(x, y)
abline(linearModel, lwd=2)
predicted <- predict(linearModel) 
segments(x, y, x, predicted, col="red")


library(ggplot2)

data(diamonds)  # Loading build-in dataset
head(diamonds)
summary(diamonds) #Summarize the dataset

colnames(diamonds)
hist(diamonds$carat,main="Carat ",xlab="Carat")


plot(price ~ carat,data=diamonds)


plot(diamonds$carat, diamonds$price)


ggplot(data=diamonds,aes(x=carat))+geom_histogram()

ggplot() + geom_density(data = diamonds,aes(x = carat), fill = "grey50")

g<-ggplot(diamonds,aes(x=carat))+geom_histogram()+facet_wrap(~color)
g

g <- ggplot(diamonds, aes(x = carat, y = price))
g + geom_point(aes(color = color))
g + geom_point(aes(color = color)) + facet_wrap(~color)
g + geom_point(aes(color = color)) + facet_grid(cut ~ clarity)

ggplot(diamonds, aes(x = carat)) + geom_histogram() + facet_wrap(~color)
ggplot(diamonds, aes(y = carat, x = 1)) + geom_boxplot()
ggplot(diamonds, aes(y = carat, x = cut)) + geom_boxplot()
ggplot(diamonds, aes(y = carat, x = cut)) + geom_violin()

ggplot(diamonds, aes(y = carat, x = cut)) + geom_point() + geom_violin()
ggplot(diamonds, aes(y = carat, x = cut)) + geom_violin() + geom_point()

ggplot(economics, aes(x = date, y = pop)) + geom_line()

install.packages("ggthemes")
library(ggthemes)
# build a plot and store it in g2
g2 <- ggplot(diamonds, aes(x=carat, y=price)) + geom_point(aes(color=color))
# apply a few themes
g2 + theme_economist() + scale_colour_economist()
g2 + theme_excel() + scale_colour_excel()
g2 + theme_tufte()
g2 + theme_wsj()



x <- round(runif(13,min=-5, max=5),0) 
y <- round(runif(13,min=-5, max=5),0) 
z <- round(runif(13,min=-5, max=5),0) 

plot(z, type = "n")
grid(lty = 1, lwd = 2)
curve(x^2, col = "blue", add = TRUE)
curve(x^2 + 1, col = "blue", add = TRUE)
points(z^2, pch = 20)


plot(z, type = "o", col = 'red', pch = 16, cex = 2)
plot(z, col = c('red', 'blue'), pch = "+", cex = 2)


colors()
palette() ## default palette
palette(sample(colors(), 10)) ## change palette
plot(runif(50), col = rep(1:10, each = 5), pch = 16, cex = 2)

a <- factor(sample(1:5, 13, replace = TRUE), levels = 1:5)
a
levels(a) <- LETTERS[1:5]
a
plot(a)
plot(y ~ a)   # Box Plot

iris        # Dataset
head(iris)
class(iris)
plot(iris)
plot(iris[1:4], col = as.numeric(iris$Species)) # color by Species


plot(sin, from = -2 * pi, to = 2 * pi)
plot(cos, from = -2 * pi, to = 2 * pi)

damped.sin <- function(x) sin(5 * x) * exp(-x^2) ## New function
class(damped.sin)
plot(damped.sin, from = -pi, to = pi)
