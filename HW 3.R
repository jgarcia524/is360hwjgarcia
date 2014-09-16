#Homework Assignment 3
#Joanne Garcia

#Question 1
A <- seq(1000)
B <- which(A %% 3 != 0)
C <- which (B %% 7 != 0)
D <- (C %% 11 != 0)
sum(D)

#Question 2
missing = function(x){
  n = sum(is.na(x))
  return(n)
}

y = c(1:10)
print(missing(y))

y = c(1,2,NaN,3,4,5,NaN,6,7,8,NaN,9,10)
print(missing(y))

#Question 3
dataframe = mtcars

r = nrow(dataframe)
c = ncol(dataframe)
for (i in 1:c) {
  n = round(runif(1) * r)
  irand = round(runif(n) * r)
  dataframe[irand,i] = NaN
}

missingsdf = function(dataframe) {
  
  miss = NULL
  c = ncol(dataframe)
  for (i in 1:c) {
    col_name = colnames(dataframe)[i]
    n_missing = num_missing(dataframe[col_name])
    missing_vec[col_name] = n_missing
  }
  return (missingsdf)
  
}

print (missing(dataframe))
print (colSums(is.na(dataframe)))

