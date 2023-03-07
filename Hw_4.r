#Max Casteel
#Homework 4 R-Code
#3/5/2023

#------------------------------------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------------------------------
#Alice, Bob, and Cecilia are playing a game where they take turns rolling a 6-sided die until a winning
#roll is achieved. Alice wins if she gets a 1 or a 2, Bob wins if he rolls a 1, 2, or 3, and Cecilia wins if
#she gets a 1, 2, 3, or 4. Alice will go first, Bob second, and Cecilia third.
#Let X = the total number of rolls required until someone wins.  Find P(X = 4).


#P(X=4) == 'what is the probability that it will take 4 rolls for someone to win?'
alice <- c(1,1,0,0,0,0)
bob <- c(1,1,1,0,0,0)
cecilia <- c(1,1,1,1,0,0)

asample <- c(0,0,0,0)
bsample <- c(0,0,0,0)
csample <- c(0,0,0,0)

awins <- 0
bwins <- 0
cwins <- 0

for(i in 1: 10000){
    for(j in 1:4){
        asample[j] <- sample(alice, 1, replace = TRUE)
        if(asample[4] == 1 && asample[1] != 1 && asample[2] != 1 && asample[3] != 1){
            awins <- awins + 1
            break
        }
        bsample[j] <- sample(bob, 1, replace = TRUE)
        if(bsample[4] == 1 && bsample[1] != 1 && bsample[2] != 1 && bsample[3] != 1){
            bwins <- bwins + 1
            break
        }
        csample[j] <- sample(cecilia, 1, replace = TRUE)
        if(csample[4] == 1 && csample[1] != 1 && csample[2] != 1 && csample[3] != 1){
            cwins <- cwins + 1
            break
        }
    }

}
total <- awins + bwins + cwins
total/10000


 #-------------------------------------------------------------------------------------------------------------------------------------------------------
 #-------------------------------------------------------------------------------------------------------------------------------------------------------
 #3c
 #A sample of 2 items is selected at random without replacement from a box containing 10 items of which 3 are defective.  
 #Let X = the number of defective items in the sample.
 #The pmf is as follows:
 #P(X = 0) = (nchoose(3,0) * nchoose(7,2) / nchoose(10,2)) == 21/45,
 #P(X = 1) = (nchoose(3,1) * nchoose(7,1) / nchoose(10,2)) == 21/45,
 #P(X = 2) = (nchoose(3,2) * nchoose(7,0) / nchoose(10,2)) == 3/45.
 #The expected value is as follows: E(X) = 0 * P(X = 0) + 1 * P(X = 1) + 2 * P(X = 2) == 0 * 21/45 + 1 * 21/45 + 2 * 3/45 == 0.6.
 #The ezxpected value in this instance represents the average number of defective items that will be found in a sample of 2 items.
#Let Y = the total number of defective items in FIVE such samples.  Use a simulation to represent p(Y = 4).
#The theoretical probability is 5 * 0.6 == 3.
#Empirical Probability:
#Set the seed:
set.seed(1234)
box2 <- 0
count3 <- 0
#I think P(Y=4) means that the outer loop is running 4 times and the inner loop is running 5 times.  Either way if you increase
#the number of times the outer loop runs, the probability will consolidate around 3 as per the law of large numbers.  Which is the theoretical probability.
for(i in 1: 4){
    for(i in 1:5){
        box2 <- c(0,0,0,1,1,1,1,1,1,1)
        sample2 <- sample(box2, 2, replace = FALSE)
        sum(sample2 == 0)
        #if the number of defective items in the sample is 1, add 1 to the count
        if(sum(sample2 == 0) == 1){
            count3 <- count3 + 1
         }
         #if the number of defective items in the sample is 2, add 2 to the count
        if(sum(sample2 == 0) == 2){
            count3 <- count3 + 2
        }
    }
}
count3/4
