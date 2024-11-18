A<-c(12,13,14,15,16)
B<-sort(A,decreasing=FALSE)
C<-sort(A,decreasing=TRUE)
sum(A)
prod(A)
max(A)
min(A)
range(A)
mean(A)
var(A)
sd(A)
median(A)
m<-matrix(c(1:12),nrow=3,ncol=4)
print(m)

m1<-rbind(A,B,C)
print(m1)
m2<-cbind(A,B,C)
print(m2)

m1[c(2,3),]
m1[2,3]

cbind(m2,D=c(1,2,3,4,5))
