#Homework 4
#Joanne Garcia

#Question 1
price <- read.csv("week-4-price-data.csv")
make <- read.csv("week-4-make-model-data.csv")
total <- merge(price,make,by=c("ModelNumber"))
total

#there are 27 observations, but I would have expected 28
#because there are 28 vehicles


#Question 2
newtotal <- merge(price,make,all=TRUE)
newtotal

#Question 3
newtotal.sub <- subset(newtotal, Year==2010)
newtotal.sub

#Question 4
newtotal.redexp <- subset(newtotal, Color=="Red" & Price>10000)
newtotal.redexp

#Question 5
newtotal.redex <- subset(newtotal, Color=="Red" & Price>10000, select = c(ID, Mileage:Year))
newtotal.redex

#Question 6
char.num = function (x) {
  num.vec <- nchar(x)
  return(num.vec)
}


char <- c("Math", "Science", "Social Studies", "ELA")
char.num(char)
