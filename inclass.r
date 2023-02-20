myVector <- c(3,12,8)
sum(myVector)

for(i in 1:3){
  print(myVector[i] == 12)
}

set.seed(12)
mySamples <- sample(myVector,100,replace = TRUE)
print(mySamples)

sum(mySamples)

mySum <- c()
for(i in 1:5){
  mySum[i] <- c(mySamples[i])
  print(mySamples[i])
}


sum(mySum)




