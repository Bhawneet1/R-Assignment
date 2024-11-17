#Q1
#a)
print(seq(from=1.3,to=4.9,by=0.3))

#b)
print(rep(1:4,5))

#c)
print(seq(from=14,to=0,by=-2))

#d)
print(rep(c(5,12,13,20),rep(2,4)))


#Q2
x<-iris
print(typeof(x))
print(rownames(x))
print(row(x))
print(colnames(x))
print(dim(x))
print(is.factor(x))
print(levels(x))
t<-c("Bad","better","good","best")
t.factor<- factor(t)
print(t.factor)



#Q3
#a)
print(mean(x$Sepal.Width))
print(sd(x$Sepal.Width))
print(mean(x$Sepal.Length))
print(sd(x$Sepal.Length))



species<-unique(x["Species"])
M<-aggregate(Sepal.Length ~ Species,data = iris,FUN = mean)
N<-aggregate(Sepal.Width ~ Species,data=iris,FUN=mean)
print(M)
print(N)


#b)
irisclass<-iris
for(i in 1:150)
{
  irisclass$Calyx[i]<-if(iris$Sepal.Length[i]<5){"short"}else{"Long"}
}
print(irisclass)


#Q4
#a)
y<-mtcars
str(mtcars)
names(mtcars)





a<-y$cyl<5
print(a)

#b)
print(y[1:10,])

#c)
honda_cars <- mtcars[grep("Honda", rownames(mtcars)), ]
print(honda_cars)
