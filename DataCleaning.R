head(airquality)

colnames(airquality)

summary(airquality)

new_df<-airquality
new_df$Ozone<-ifelse(is.na(new_df$Ozone),median(new_df$Ozone,na.rm = TRUE),new_df$Ozone)
summary(new_df)

new_df$Solar.R<-ifelse(is.na(new_df$Solar.R),median(new_df$Solar.R,na.rm = TRUE),new_df$Solar.R)
summary(new_df)


head(new_df)

boxplot(new_df)



dataFrame<-data.frame(
  x1=c(1:4,99999,1,NA,1,1,NA),
  x1= c(1:5, 1, "NA", 1, 1, "NA"),
  x1=c(letters[c(1:3)], "x  x",  "x", "   y    y y", "x", "a", "a", NA),
  x4="",
  x5=NA
)
print(dataFrame)

colnames(dataFrame)

colnames(dataFrame) <- paste0("col", 1:ncol(dataFrame))            

colnames(dataFrame)

print(dataFrame[dataFrame==""])

dataFrame[dataFrame==""]<-NA

dataFrame$col2                                                

# NA in string to replace with NA
dataFrame$col2[dataFrame$col2 == "NA"]<-NA

dataFrame <- dataFrame[rowSums(is.na(dataFrame)) != ncol(dataFrame), ]        
print(dataFrame)
