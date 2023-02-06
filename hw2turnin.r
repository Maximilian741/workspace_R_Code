#Hw 2
#Max Casteel

set.seed(4)

counter2 = 0
nsim <- 1000000
for(i in 1:nsim){
  die <- sample(1:6,4, replace = TRUE)
  die_sum2 <- c(die)
  real_sum <- sum(die_sum2)
  # print(real_sum)
  if(real_sum == 5){
    counter2 <- counter2 + 1
    # print(counter2)
  }
}

counter3 = 0
nsim <- 1000000
for(i in 1:nsim){
  die2 <- sample(1:6,4, replace = TRUE)
  die_sum3 <- c(die2)
  real_sum2 <- c(sum(die_sum3))
  if(real_sum2 == 5 || real_sum2 == 4){
    counter3 <- counter3 + 1
    # print(counter2)
  }
}


#Simulation for just '5'
print("Simulation for just '5':")
print(counter2)
print(counter2/nsim)

#Simulation for '5' or '4'
print("Simulation for '5' or '4':")
print(counter3)
print(counter3/nsim)

