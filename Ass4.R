patientID<-c(1,2,3,4)
AdmDate<-c("10/15/2009","10/15/2009","10/15/2009","10/15/2009")
Age<-c(25,34,28,52)
Daibetes<-c("Type1","Type2","Type1","Type1")
Status<-c("Poor","Improved","Excellant","Poor")
df<-data.frame(patientID,AdmDate,Age,Daibetes,Status)
print(df)

sub1<-df[,c("patientID","Age")]
print(sub1)

sub2<-df[Daibetes=="Type1"]
print(sub2)

sum(df$Status=="Poor")

summary(df)

sum(df$Age)/nrow(df)

a <- c(12, 14, 16, 20)

matrix_data <- matrix(1:15, nrow = 5, ncol = 3)

s <- c("First", "Second", "Third")


MyList <- list(
  title = "My First List",
  criteria = list(
    Age = a,
    Matrix = matrix_data,
    Score = s
  )
)
print(MyList)

print(MyList$criteria)

print(MyList$criteria$Age)
