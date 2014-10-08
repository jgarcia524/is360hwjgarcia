#Homework Assignment 6
#Joanne Garcia

head(USArrests)

Assault <- USArrests$Assault
Murder <- USArrests$Murder
Rape <- USArrests$Rape

#1 - Scatterplot
plot(Assault, Murder)
abline(lm(Murder ~ Assault))
arrests.lm <- lm(Murder ~ Assault, data=USArrests)
summary(arrests.lm)$r.squared

#The data seems to have a positive correlation, with the value of
#the coefficient of determination being 0.6430008.  So there is 
#somewhat of a strong relationship between arrests made in each state
#for Murder and Assault.

#2 - Histogram
hist(Assault)

#The data shows that few of the states have minimal Assault arrests, and
#very few states have maximum Assault arrests.  The majority of states
#have between 100 - 300 Assault arrests, with most states having between
#100-150 Assault arrests.

#3 - Boxplot

boxplot(Rape, data=USArrests, horizontal=T)
mean(Rape)
quantile(Rape)
IQR(Rape)

#The average number of rape arrests is 20.1 per state.  The number of rape arrests in
#each state ranges from 7.3 to 46.0.  The interquartile range is 11.1, meaning 50%
#of the states have number of rape arrests between 15.075 and 26.175.  The upper quartile
#shows a vast range of arrests from 26.175 to 46.0, with two outliers past the upper quartile.
#This indicates there is not consistency in the number of arrests made for rape per state.
