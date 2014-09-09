#Homework Assignment 2
#Joanne Garcia

#Question 1
queue <- c("James", "Mary", "Steve", "Alex", "Patricia")
queue

#Question 2
queue <- c(queue, "Harold")
queue

#Question 3
queue <- c(queue[-1])
queue

#Question 4
queue <- append(queue, "Pam", after=match("Mary", queue))
queue

#Question 5
queue <- c(queue[-6])
queue

#Question 6
queue <- queue[!(queue=="Alex")]
queue

#Question 7
which("Patricia" == queue)

#Question 8
length(queue)