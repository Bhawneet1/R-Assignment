#Q1
v<-c(12,13,14,15,16)
print(v)

#Q2
print(sum(v))

#Q3
print(prod(v))

#Q4
print(max(v))
print(min(v))

#Q5
print(range(v))

#Q6
print(mean(v))
print(var(v))
print(sd(v))
print(median(v))


#Q7
B<-sort(v,decreasing = F)
C<-sort(v,decreasing = T)
print(B)
print(C)

#Q8
mat<-matrix(1:12,nrow=3,ncol=4)
print(mat)


#Q9
mat1<-rbind(v,B,C)
mat2<-cbind(v,B,C)
print(mat1)
print(mat2)


#Q10
q<-mat1[c(2,3),]
print(q)


#Q11
p<-mat1[,c(1,4)]
print(p)

c<-c(1,2,3,4,5)
d<-cbind(mat2,c)
r<-d[,c(1,4)]
print(r)
#Q12
s<-mat1[2,3]
d<-mat1[2,4]
su<-c(s,d)
print(su)


