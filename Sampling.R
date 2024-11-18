sample (c(1:10))

# r sample with replacement from vector
#If a value can be selected multiple times
#is known as sampling with replacement.
sample (c(1:10), replace =T)

# r sample without replacement from vector
sample (c(1:10), replace =F)

# r sample multiple times without replacement
sample (c(1:10), size=3, replace =F)

# r sample with replacement from vector
sample (c(1:10), size=3, replace=T)

# simple random sampling in r
sample (c('Good','Bad'), size=6, replace=T, prob=c(0.7,0.3))

#use of set.seed()
#Generating random sampling
sample(1:10,5)   #RUN n TIME TO GET DIFFERENT VALUES

#TO GET SAME SAMPLE VALUE EVERY TIME USE THE SEED()FUNCTION

set.seed(1)           #CASE 1
sample(1:10,5)

set.seed(1)           #CASE 2
sample(1:10,5)

set.seed(2)           #CASE 3
sample(letters,4)

set.seed(24)           #CASE 4
sample(letters,4)

set.seed(1)           #CASE 5
sample(letters,4)

