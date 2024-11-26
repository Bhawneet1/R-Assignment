set.seed(1)
MARKS<-matrix(sample(50:100,60,replace=T),ncol=3)
MARKS
colnames(MARKS)<-c("SUB1","SUB2","SUB3")
rownames(MARKS)<-paste("Student",1:20,sep="_")
MARKS

total_marks<- apply(MARKS,1,sum )
print(total_marks)

MARKS<-cbind(MARKS,total_marks)
head(MARKS)

st.err <-function(x){
  sd(x)/sqrt(length(x))
}
sterror<-apply(MARKS[,1:3],2,st.err)
print(sterror)

MARKS[, 1:3] <- apply(MARKS[, 1:3], 2, function(x) x + 0.25)
print(MARKS)


v1<-MARKS[,"SUB1"]#eaxtract first col of marks matrix
v2<-MARKS[,"SUB2"]
v3<-MARKS[,"SUB3"]

marks_list<-list(v1=v1,v2=v2,v3=v3)

marks_sum<-lapply(marks_list,sum)
print(marks_sum)
#returns list

TOTAL_SUM<-sapply(marks_list,sum)
print(TOTAL_SUM)
# returns vector

SQUARE<-sapply(marks_list,function(val) val*val)
print(SQUARE)

I<- rep(c(1,2,3,4),each=5)
I
MARKS<-cbind(MARKS,I)

SUB1<-MARKS[,"SUB1"]
mean_SUB1 <- tapply(SUB1, MARKS[, "I"], mean)
sd_SUB1 <- tapply(SUB1, MARKS[, "I"], sd)
print(mean_SUB1)

print(sd_SUB1)
# returns vector


mapply(function(x,y) x/y,v1,v2)
#returns vector and pass last 2 as parameters in function


data("Seatbelts")
Seatbelts_df<-as.data.frame(Seatbelts)
head(Seatbelts_df)

column_mean<-apply(Seatbelts_df,2,mean)
column_mean

column_sd<-apply(Seatbelts_df,2,sd)
column_sd

col_range<-lapply(Seatbelts_df,range)
print(col_range)

Sum_col<-sapply(Seatbelts_df,sum)
print(Sum_col)

Seatbelts_df$year<-rep(1969:1984,each=12)

Killed<-tapply(Seatbelts_df$DriversKilled,Seatbelts_df$year,mean)
print(Killed)

fatality_ratios <- mapply(function(x, y) x / y, Seatbelts_df$DriversKilled, Seatbelts_df$front)
print("Fatality Ratios (DriversKilled / front):")
print(fatality_ratios[1:10]) # Display the first 10 ratios
