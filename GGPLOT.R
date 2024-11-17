install.packages("ggplot2")
library(ggplot2)
data()
diamonds
View(diamonds)
?diamonds

###########GramerofGraphics
###Visualization diff layers first is data layer, second aesthetics(x,y,fill,shape), geom layer
####Histogram(for numeric continuous values ka distribution)
#(histogram used for univariant distribution i.e. one dimension here x)
ggplot(data=diamonds,aes(x=price))+geom_histogram()

# To assign color then fill
ggplot(data=diamonds,aes(x=price))+geom_histogram(fill="green")


# To assign boundary colour then col
ggplot(data=diamonds,aes(x=price))+geom_histogram(fill="green",col="orange")


##Bar plot(categorical values , factor)
ggplot(data=diamonds,aes(cut)) +geom_bar()


ggplot(data=diamonds,aes(cut)) +geom_bar(fill="blue")

ggplot(data=diamonds,aes(x=cut))+geom_bar(fill="blue",col="red")


# to determine color by sone column
ggplot(data = diamonds , aes(x=cut,fill=cut)) +geom_bar()


##Scattered to get relation in continuos var

ggplot(diamonds,aes(x=carat,y=price))+geom_point()

ggplot(diamonds,aes(carat,price,col=cut))+geom_point()


##box-plot(one continuos and one categorical value to box-plot)

#x->discrete(categorical)  y->continuos
ggplot(data=diamonds,aes(x=clarity,y=carat))+geom_boxplot()
#horizontal line matlab median

ggplot(data=diamonds,aes(x=clarity,y=carat,fill = clarity))+geom_boxplot()


## faceting(one data mai bahot cheezae hai to)

ggplot(data=diamonds,aes(x=clarity,y=carat,fill=cut))+geom_boxplot()+facet_grid(~cut)

#many arguments therefore split on bases of cut

