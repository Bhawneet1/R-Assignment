#Q1
patientID<-c(1,2,3,4)
AdmDate<-c("10/15/2009","11/01/2009","10/21/2009","10/28/2009")
Age<-c(25,34,28,52)
Diabetes<-c("Type1","Type2","Type1","Type1")
Status<-c("Poor","Improved","Excellent","Poor")
df<-data.frame(patientID,AdmDate,Age,Diabetes,Status)
print(df)


#Q2
#a)

subset1 <- df[, c("patientID", "Age")]
print(subset1)

#b)

type1_patients <- subset(df, Diabetes == "Type1")
print(type1_patients)

#c)

count_poor_status <- sum(df$Status == "Poor")
print(count_poor_status)

#d)

summary(df)

#e)

avg_age<-aggregate(Age ~ Diabetes,data=df,FUN = mean)
print(avg_age)


#f)

new_patient <- data.frame(
  patientID = as.integer(readline(prompt = "Enter PatientID: ")),
  AdmDate = as.Date(readline(prompt = "Enter Admission Date (YYYY-MM-DD): ")),
  Age = as.integer(readline(prompt = "Enter Age: ")),
  Diabetes = readline(prompt = "Enter Diabetes Type (Type1/Type2): "),
  Status = readline(prompt = "Enter Status (Poor/Improved/Excellent): "),
  stringsAsFactors = FALSE
)


df <- rbind(df, new_patient)


print(df)



#Q3

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
