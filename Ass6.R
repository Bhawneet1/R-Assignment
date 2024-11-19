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

# View the dataset
print(dataset)

unique(dataset$Country)

dataset %>% group_by(Continent) %>% summarise(uniqueCountries= n_distinct(Country))

dataset %>% filter(Continent=="Europe")%>%
            group_by(Year) %>%
            slice_min(gdpPerc)%>%
            select(Year,Country,gdpPerc)


dataset %>% group_by(Continent)
        %>% summarise(Avg_life=mean(LifeExp ,na.rm=TRUE))

dataset %>% mutate(Total_gdp =gdpPerc*Pop)%>%
         group_by(Country)%>%
         summarise(Total_gdp = sum(Total_gdp,na.rm=TRUE))  %>%
        arrange(desc(Total_gdp)) %>% 
       slice_head(n=5)

dataset %>%
  filter(LifeExp >= 80) %>%
  select(Country, Year, LifeExp)

dataset %>% group_by(Country) %>%
            summarise(correlation=cor(LifeExp,gdpPerc,use="complete.obs")) %>%
            arrange(desc(correlation)) %>%
            slice_head(n=10)

dataset %>% filter(Continent !="Asia") %>%
            group_by(Continent,Year) %>%
            summarise(AvgPop=mean(Pop,na.rm=T)) %>%
            slice_max(AvgPop,n=1)

dataset %>% group_by(Country) %>%
summarise(constpop = sd(Pop,na.rm = T))%>%
arrange(constpop) %>%
slice_head(n=3)


dataset %>%
  arrange(Country, Year) %>%
  group_by(Country) %>%
  mutate(PopChange = Pop - lag(Pop), 
         LifeExpChange = LifeExp - lag(LifeExp)) %>%
  filter(PopChange < 0 & LifeExpChange > 0) %>%
  select(Country, Year, PopChange, LifeExpChange)


