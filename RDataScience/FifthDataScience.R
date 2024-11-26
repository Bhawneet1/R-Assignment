#Q1
library(dplyr)

url <- "https://raw.githubusercontent.com/fivethirtyeight/data/master/daily-show-guests/daily_show_guests.csv"
daily_show_guests <- read.csv(url)

head(daily_show_guests, 10)

#Q2
daily_show_guests <- daily_show_guests %>%
  rename(
    YEAR = YEAR, 
    GoogleKnowlege_Occupation = GoogleKnowlege_Occupation,  
    Show = Show, 
    Group = Group, 
    Raw_Guest_List = Raw_Guest_List 
  )

colnames(daily_show_guests)

#Q3

report <- daily_show_guests %>% select(YEAR, Show, Raw_Guest_List)

print(report)

#Q4
no_year_data <- daily_show_guests %>% select(-YEAR)

print(no_year_data)


#Q5

abc_actors <- daily_show_guests %>% filter(GoogleKnowlege_Occupation == "actor" & Raw_Guest_List == "ABC")

print(abc_actors)


#Q6
arranged_data <- daily_show_guests %>%arrange(Show)

print(arranged_data)

#Q7
daily_show_guests <- daily_show_guests %>% mutate(Experience = "N/A")  

print(daily_show_guests)


