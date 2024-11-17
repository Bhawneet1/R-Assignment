#Q1
A<-23.4
B<-45
C<-678

#Q2
print(A)
print(B)
print(C)

#Q3
rm(C)

#Q4
D<-"I am Learning R"
print(D)

#Q5
S1<-"Bhawneet"
S2<-"Singh"
S3<-paste(S1,S2,sep = " ")
print(S3)

#Q6
c=as.integer(readline(prompt = "Enter number"))
if(c==0 || c==1)
{
  n<-c
  print(n)
}else
{
  print("Can't take this number")
}


#Q7
n<-as.integer(readline(prompt = "Enter number"))
a=10
b=2
switch(n,
       
       "1"=a+b,
       "2"=a-b,
       "3"=a*b,
       "4"=a/b
         
         
         
       )


#Q8
print(exp(2))
print(log(10))
print(log10(10))
print(log2(10))
print(pi)
print(sqrt(10))


#Q9
print(23+(4.5*2.3)/10)
print(456/12-log(90))
print(exp(5)+12/(5^6))
print(sqrt(45)*12/3)
