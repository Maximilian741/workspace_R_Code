
#Write a r scipt for the following:
#Run a simulation to estimate the probability of obtaining a total of 14 with f, fair 6-sided, dice.

#Create a vector of the numbers 1-6
myVector <- c(1:6)

#Create a vector for the 100 sample being true.
myVectorTrue <- c()

#Create a vector for the 100 sample being false.
myVectorFalse <- c()


#Sample from myVector 100 times
for (i in 1:100) {
  myVectorSample <- sample(myVector, 2, replace = TRUE)
  if (sum(myVectorSample) == 14) {
    myVectorTrue <- c(myVectorTrue, TRUE)
  } else {
    myVectorFalse <- c(myVectorFalse, FALSE)
  }
}

#Find the mean of the true vector
mean(myVectorTrue)


