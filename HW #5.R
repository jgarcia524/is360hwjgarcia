#Homework 5
#Joanne Garcia

#Hi Professor,
#I tried to reach you on the discussion board but it's a little late
#and I don't want to miss the deadline for the assignment.  I interpretted
#the assignment as wanting to include all cars with mpg greater than 20, but
#my result did not match your sample.  Then, I tried to calculate the average
#mpg first and filtered average mpg greater than 20, which did match the sample.
#I wasn't sure which was the correct one since I interpretted it differently.
#So below I have included both of my scripts.

install.package("dplyr")

#Script 1: filtering mpg greater than 20 first

a1 <- group_by(mtcars, cyl, am)
a2 <- select(a1, mpg, wt)
a3 <- filter(a2, mpg > 20)
a4 <- summarise(a3,
                avgmpg = mean(mpg, na.rm=TRUE),
                avgwt = mean(wt, na.rm=TRUE))
a4

#Script 2: calculating average mpg first, then filtering average mpg

a1 <- group_by(mtcars, cyl, am)
a2 <- select(a1, mpg, wt)
a3 <- summarise(a2,
                avgmpg = mean(mpg, na.rm=TRUE),
                avgwt = mean(wt, na.rm=TRUE))
a4 <- filter(a3, avgmpg > 20)
a4
