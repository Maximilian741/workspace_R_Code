#Max Casteel
#4/4/2023
#Exam 2

#1
#Three ducks are hiding in a spooky forest. A search party has been sent out to find them. Two of
#the ducks are standard hiders and have a 70% chance to be caught by the end of the day. The third
#duck is an expert hider and only has a 10% chance to be caught by the end of the day. The ducks
#are anti-social and very spread out, so whether or not one is caught doesn’t change the probability
#that any of the others will. Let X = The number of ducks that are caught by the end of the day.

#Here is a simlutaion to verify E(x) and also Var(x) using empirical methods.
#E(x) = 1.5
#Var(x) = .51
d1counter <- 0
d2counter <- 0
d3counter <- 0
duck1 <- .7
duck2 <- .7
duck3 <- .1
hunter <- 10
total <- 0
for(i in 1:10000){
    #I am using the runif function to simulate the probability of the ducks being caught.
    #The runif function generates a random number between 0 and 1.  This number is then compared to
    #the probability of the duck being caught.  If the random number is less than the probability of the
    #duck being caught, then the duck is caught.  If the random number is greater than the probability
    #of the duck being caught, then the duck is not caught.  This is repeated for each duck.  
    #The runif function is not a distribution function.  The parameters are: runif(n,min,max)
    if(runif(1,0,1) < duck1){
        d1counter <- c(d1counter + 1)
    }
    if(runif(1,0,1) < duck2){
        d2counter <- c(d2counter + 1)
    }
    if(runif(1,0,1) < duck3){
        d3counter <- c(d3counter + 1)
    }
}
total <- c(d1counter + d2counter + d3counter)
#E(x)
expectedvalue <- total/10000
expectedvalue
#Var(x)
variance <- (d1counter/10000 * (1 - (d1counter/10000))) + (d2counter/10000 * (1 - (d2counter/10000))) + (d3counter/10000 * (1 - (d3counter/10000)))
variance



#2
#I have 4 ducks in a pen wearing vests numbered 1 to 4. I will randomly choose two ducks without
#replacement. Let the random variable X be the smaller of the two numbers shown on the vests.
#E(x) = 1.66666666666667
#This is essentially getting the probabilities for each P(X = x).  So the below code is verifying part a.
d1 <- 1
d2 <- 2
d3 <- 3
d4 <- 4
sampledducks <- 0
counter1 <- 0
counter2 <- 0
counter3 <- 0
for(i in 1:100000){
    sampledducks <- sample(c(d1,d2,d3,d4),2,replace = FALSE)
    if((sampledducks[1]<sampledducks[2] && sampledducks[1] == 1) || (sampledducks[1]>sampledducks[2] && sampledducks[2] == 1)){
        counter1 <- counter1 + 1
    }else if((sampledducks[1]<sampledducks[2] && sampledducks[1] == 2) || (sampledducks[1]>sampledducks[2] && sampledducks[2] == 2)){
        counter2 <- counter2 + 1
    }else if((sampledducks[1]<sampledducks[2] && sampledducks[1] == 3) || (sampledducks[1]>sampledducks[2] && sampledducks[2] == 3)){
        counter3 <- counter3 + 1
        #I esentially hard coded in the fact that the lesser number would never be 4 here.
        #I did this by only checking the three locations.
    }
}
#P(X = 1)
counter1/100000
#P(X = 2)
counter2/100000
#P(X = 3)
counter3/100000

#Verifying part b.
#E(x) = 1.66666666666667
#This is the same as the above code, but I am just adding up the probabilities for each X
#In this instance X is taking the value 1,2,3.
(counter1/100000 * 1) + (counter2/100000 * 2) + (counter3/100000 * 3)



