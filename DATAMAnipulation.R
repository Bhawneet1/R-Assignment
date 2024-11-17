library(dplyr)
laptops<-read.csv("C:/Users/bhawn/Downloads/laptops.csv")
head(laptops)

colnames(laptops)

################select(to select a column)
laptops %>% select(1,2) ->laptop1_2
print(laptop1_2)

laptops %>% select(3:6)->laptop_3
print(laptop_3)


laptops %>% select("Model.Name","Category","RAM") ->laptopcol
print(laptopcol)

laptops %>% select(starts_with("P")) ->laptopP
print(laptopP)


laptops %>% select(ends_with("s")) ->laptops1
print(laptops1)

###################filter(to get a particular record)

laptops %>% filter(RAM >4)->RAM_4
print(RAM_4)

laptops %>% filter(Operating.System == "Windows")->Windowss
print(Windowss)

laptops %>% filter(Operating.System=="Windows" & CPU=="Intel Celeron Dual Core N3060 1.6GHz") ->CPU
print(CPU)


###############Combination of select and filter
lab <- laptops %>% 
  filter(Category == "Notebook") %>% 
  select(Manufacturer)
print(lab)
# pehle filter phir select


lab2<-laptops %>% filter((Manufacturer == "Acer") & Weight >15) %>% select("Manufacturer","Weight","Model.Name")
print(lab2)
