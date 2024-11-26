A<-23.4
B<-45
C<-678
A
B
C
rm(C)
ls()
D<-"I am Learning R"
D
firstname<-"Bhawneet"
lastname<-"Singh"
paste(firstname,lastname,sep=" ")
exp(2)
log(2)
log10(2)
log2(2)
pi




A<-c(12,13,14,15,16)
sum(A)
prod(A)
max(A)
min(A)
range(A)
mean(A)
var(A)
sd(A)
B<-sort(A,decreasing = F)
C<-sort(B,decreasing = T)
m<-matrix(1:12,nrow=3,ncol=4)
l<-rbind(A,B,C)
r<-cbind(A,B,C)
l
r
l[2,3]
d<-c(13,14,15,16,17)
r<-cbind(r,d)
r
r[1,4]
r[c(2,3),]


seq(1.3,4.9,by=0.3)
rep(c(1,2,3,4),times=5)
seq(14,0,by=-2)
rep(c(5,12,13,20),each=2)


data<-iris
class(iris)
summary(iris)
nrow(data)
ncol(data)
is.factor(data)
is.factor(data$Species)
labels(data$Species)
factor(data$Species)
levels(data$Species)


for(i in 1:nrow(data)){
  data$calyx[i]=if(data$Sepal.Length[i]<5){"short"}else{"long"}
}
data$calyx

str(mtcars)
names(mtcars)
d<-mtcars
d$cyl<5
head(d,10)
print(d[1])

name="Toyota"
print(d[1])


PatientID <-c(1,2,3,4)
AdmDate <-c("10/15/2009","11/01/2009 ", "10/21/2009" ,"10/28/2009" )
Age <-c(25,34,28,52)
 
Diabetes <-c("Type1"," Type2","Type1","Type1")
Status <-c("Poor","Improved","Excellant","Poor")
df<-data.frame(PatientID ,AdmDate,Age,Diabetes,Status)
df
sub1<-df[,c("PatientID","Age")]
sub1
sub2<-df$Diabetes == "Type1"
sub2
sub3<-sum(df$Status=="Poor")
sub3
summary(df)
mean(df$Age)

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


a<-c(12,14,16,20)
m<-matrix(1:10,nrow=5,ncol=2)
s<-c('First','Second','Third')
MyList<-list(
  title="My  First List ",
  criteria=list(
    age=a,
    mat=m,
    score=s
  )
)
print(MyList)
print(MyList$criteria)
print(MyList$criteria$age)


library(dplyr)
data<-read.csv("C:/Users/bhawn/OneDrive/Desktop/RDataScience/daily_show_guests.csv")
head(data)
colnames(data)<-c("a","b","c","d","e")
colnames(data)
data<-data %>% rename(
  Year=a,
  job=b,
  date=c,
  category=d,
  guest_name=e
)
colnames(data)

c<-data[,c("Year","date","guest_name")]
head(c)

d<- data %>% select("Year","date","guest_name")
print(d)
print(head(d))

e<-data %>% select(-Year)
head(e)

f<-data[,c(data$job=="Comedian" & data$guest_name=="Sandra Bernhard")]

g<- data %>% filter(job=="Comedian" & guest_name=="Sandra Bernhard")
head(g)

h<-data %>% arrange(date)
head(h)

i<-data %>% mutate(Experience =NA)
head(data)
colnames(i)





library(dplyr)

set.seed(123) # For reproducibility

dataset <- data.frame(
  Country = rep(c("India", "USA", "Germany", "Brazil", "Japan"), each = 4),
  Continent = rep(c("Asia", "North America", "Europe", "South America", "Asia"), each = 4),
  Year = rep(2000:2003, 5),
  LifeExp = round(runif(20, 50, 85), 1),  # Random life expectancy between 50 and 85
  Pop = round(runif(20, 1e7, 1.4e9)),    # Random population between 10 million and 1.4 billion
  gdpPerc = round(runif(20, 500, 80000), 2) # Random GDP per capita between 500 and 80,000
)

library(dplyr)
unique(dataset$Country)

dataset %>% group_by(Continent)%>%
            summarise(unique=n_distinct(Country))


dataset %>% filter(Continent=="Europe")%>%  
        group_by(Year)%>%
        slice_min(gdpPerc)
dataset %>% group_by(Continent)
        %>% summarise(Meanlife=mean(LifeExp,na.rm=T))       


dataset %>% group_by(Country)%>%
            mutate(Total_gdp=gdpPerc*Pop)%>%
            summarise(Total_gdp=sum(Total_gdp,na.rm = T))%>%
            arrange(desc(Total_gdp))%>%
            slice_head(n=5)

dataset %>% filter(LifeExp >=80)

dataset %>% group_by(Country)%>%
            summarise(best = cor(LifeExp,gdpPerc))%>%
            arrange(desc(best))%>%
            slice_head(n=10)
dataset %>% filter(Continent !="Asia")%>%
            group_by(Continent,Year)%>%
            summarise(avgPop=mean(Pop,na.rm=T))%>%
            arrange(desc(avgPop))%>%
            slice_max(avgPop,n=1)

dataset %>% group_by(Country)%>%
            summarise(consistent = sd(Pop,na.rm = T))%>%
            arrange(consistent)%>%
            slice_head(n=3)

dataset %>%

  group_by(Country) %>%
  mutate(PopChange = Pop - lag(Pop), 
         LifeExpChange = LifeExp - lag(LifeExp)) %>%
  filter(PopChange < 0 & LifeExpChange > 0) %>%
  select(Country, Year, PopChange, LifeExpChange)




# Create a data frame for the medicine dataset
medicine_data <- data.frame(
  MedID = c(101, 102, 103, 104, 105, 106, 107, 108, 109, 110),
  Med_Name = c("Paracetamol", "Ibuprofen", "Amoxicillin", "Metformin", 
               "Atorvastatin", "Omeprazole", "Lisinopril", "Azithromycin", 
               "Ciprofloxacin", "Levothyroxine"),
  Company = c("PharmaCorp", "HealthMed", "MedLife", "DiabeCare", 
              "HeartWell", "DigestCare", "CardioLife", "AntibioMed", 
              "BioGenix", "ThyroMed"),
  Manf_year = c(2021, 2022, 2023, 2020, 2021, 2022, 2023, 2023, 2022, 2021),
  Exp_date = c("2024-12-31", "2025-06-30", "2026-03-15", "2025-12-31", 
               "2024-10-31", "2025-11-30", "2027-01-01", "2025-05-31", 
               "2026-08-31", "2023-12-31"),
  Quantity_in_stock = c(200, 300, 150, 250, 100, 400, 220, 180, 130, 90),
  Sales = c(150, 180, 90, 120, 80, 300, 170, 150, 110, 60)
)

# Write the data frame to a CSV file
write.csv(medicine_data, "DataSet.csv", row.names = FALSE)

# Confirm the file is created
print("DataSet.csv has been created in the working directory.")

df<-read.csv("Dataset.csv")
head(df,4)
tail(df,4)
colnames(df)
cor(df$Quantity_in_stock,df$Sales)
barplot(df$Quantity_in_stock,df$Sales)

df %>% group_by(Company) %>% 
      summarise(nCount=n())%>%
      filter(nCount>1)


types_of_medicines <- medicine_data %>%
  select(Med_Name) %>%
  distinct()
types_of_medicines

boxplot(as.factor(df$Exp_date))


mean(df$Quantity_in_stock)

colnames(df)
library(ggplot2)
ggplot(df,aes(x=Manf_year,y=Sales))+
geom_point()+
geom_smooth(method="lm")
