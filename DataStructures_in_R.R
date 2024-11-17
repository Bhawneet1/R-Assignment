a=10
b=10L
c=2+3i
d=TRUE
class(a)
#"numeric"
class(b)
#"integer"
class(c)
#"complex"
class(d)
# "logical"
#Dynamic datatype language means no need to specify the types implictly done

##########Assignment operator
e=11
f<-12
13->g

########### Arithematic

print(e+f)
print(e-f)
print(e*f)
print(e/f)
print(e**2)


########### Relational

print(e>7)
print(e<14)
print(e==12)
print(e!=11)

##########Logical

h<-TRUE
i<-FALSE

print(h & i)
print(h | i)
print(!i)


#############################vectors(Homogeneous Structure)
vec1<-c(1,2,3)
class(vec1)
#"numeric"

vec2<-c("a","b","c")
class(vec2)
#"character"

vec3<-c(T,F,T)
class(vec3)
#"logical"

mixed<-c("a",1,F,NA,"")
print(mixed)
#NA hamesha Na hi rehta hai no conversion
#character
#homogeneous hai to ek dataType mai convert ho jaega acc to precedence
#Order of precedence
#character>Numeric>Logical
#matlab agar kisi vect mai char hoga to saara vect character ban jaega
#agar char na hua aur numeric aur logical hua to saar vect numeric ban jaega
class(mixed)

mixed[1:3]
#1,2,3 index "a"     "1"     "FALSE"


##############list(Heterogeneos DataStructure)

# to no conversion as Heterogeneos
l1<-list(1,"a",T)
print(l1)
#Three elements in three components

class(l1)
#list

class(l1[[1]])
#1

class(l1[[2]])
#"a"

l2<-list(c(1,2,3),c("a","b","c"),c(T,F,T))
print(l2)
#[[1]]
#[1] 1 2 3

#[[2]]
#[1] "a" "b" "c"

#[[3]]
#[1]  TRUE FALSE  TRUE


print(l2[1])
#[1] 1 2 3

print(l2[[1]])
#[1] 1 2 3

print(l2[[1]][2])
#2


###############3Matrix(2D homogeneous DataStructure)

m1<-matrix(c(1,2,3,4,5,6))
#bydefault columns
print(m1)
#   [,1]
#[1,]    1
#[2,]    2
#[3,]    3
#[4,]    4
#[5,]    5
#[6,]    6

m2<-matrix(c(1,2,3,4,5,6),nrow = 2,ncol=3)
print(m2)
#column-wise
#     [,1] [,2] [,3]
#[1,]    1    3    5
#[2,]    2    4    6

print(m2[4])
# 4
print(m2[2,2])
# 4

m3<-matrix(c(1,2,3,4,5,6),nrow = 2,ncol=3,byrow = T)
print(m3)


######## Array(MultiDim Homogeneous DataStructure)
vect1<-c(1,2,3,4,5,6)
vect2<-c(7,8,9,10,11,12)

a1<-array(c(vect1,vect2),dim = c(2,3,2))
# dim(row,col,no. of matrices)
print(a1)
#, , 1

#       [,1] [,2] [,3]
#[1,]    1    3    5
#[2,]    2    4    6

#, , 2

#       [,1] [,2] [,3]
#[1,]    7    9   11
#[2,]    8   10   12

print(a1[7])
#7
print(a1[1,1,2])
#give row,col,matrix to access the element
#7


######factor(char -> factor as we need to set levels i.e alphabatically for categorical data)

color1<-c("blue","green","yellow")
as.factor(color1)->color1
print(factor(color1))
#Levels: blue green yellow

color2<-c("green","yellow","blue")
as.factor(color2)->color2
print(factor(color2))
#Levels: blue green yellow (alphabatical hi hai)

###########dataFrames
fruits<-data.frame(fruit_name = c("Apple","Banana","Guava"), fruit_price=c(10,20,30))
fruits$fruit_name
#"Apple"  "Banana" "Guava" 

fruits$fruit_price
#10 20 30
