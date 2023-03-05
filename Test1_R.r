#Max Casteel
#Test 1 R-Code
#2/23/2023
#------------------------------------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------------------------------
#2b
#The theoretical probability is .81450625 + 4(.0426875) = .98598
#This is the same as all of them working, and the probability of 1 of them breaking added together.  
#Since there are 4 ways for 1 to break, and 1 way for all of them to work, the probability is (4).0426875 + .81450625 = .98598
#It is worth noting that I used the function(x) logic for R code that I learned from Stack Overflow.
# Set up the parameters
set.seed(123)
p <- 0.05
q <- 0.95
n_sim <- 100000
n_components <- 4
# Simulate the failure status of the four components
#Repliacte is a function that replicates a vector or matrix n_sim times, and rbinom is a function that 
#generates a vector of random numbers from a binomial distribution with n_components trials and probability of success p.
#This allows us to essentially loop through the experiment without having to write a for loop.
#Also using the rbinom function, we do not have to provide our own logic for bayes theorem, as it is already built into the function.
sim_results <- replicate(n_sim, rbinom(n_components, 1, q))
# Count the number of simulations in which at least three components are functional
#apply() is a function that applies a function to each column or row of a matrix
#we call sum(x) through use of the function(x) logic, and this is the function that is being applied.  In this instance x ==
#sum() is a function that sums the values in a vector, and we areusing it to provide a conditional statement 
#that will return a 1 if the sum of the vector is greater than or equal to 3, and a 0 if it is not.
functional_simulations <- apply(sim_results, 2, function(x) sum(x) >= 3)
prob <- sum(functional_simulations) / n_sim
print(prob)
#------------------------------------------------------------------------------------------------------------------------------------------------------
#3b
#The theoretical probability that I caluculated is as follows: 1 - [P(X=0) + P(X = 1)] == 1 - [(nchoose(5,0) * nchoose(7,5)/ nchoose(12,5)) + (nchoose(5,1) * nchoose(7,4) / nchoose(12,5))] == 1 - (21/792 + 175/792) == 1 - 196/792 = .75252525252525.

#Theoretical Probability: .75252525252525
 1 - ((choose(5,0) * choose(7,5)/ choose(12,5)) + (choose(5,1) * choose(7,4) / choose(12,5)))

#Empirical Probability:
db <- 12
keyword <- 5
n_sim <- 100000
prob_est <- 0
for(i in 1:n_sim){
    #sum() is a function that sums the values in a vector, and we areusing it to provide a conditional statement
    #that will return a 1 if the sum of the vector is greater than or equal to 2, and a 0 if it is not.
    #This is equivalent to the hypothetical problem that we were given as it is the same as saying that we are 
    #looking for the probability that the keyword is found in at least 2 of the 5 searched databases.
    #If it is found we increment a counter then divide by the number of simulations to get the probability.
    if(sum(sample(1:db, keyword, replace = FALSE) <= keyword) >= 2){
        prob_est <- prob_est + 1
    }
}
prob_est <- prob_est / n_sim
print(prob_est)


#------------------------------------------------------------------------------------------------------------------------------------------------------
#4b
#This is P(Produced by B|Defective) = P(Produced by B and Defective) / P(Defective)
#I drew a tree diagram to solve the theoretical prob. it ended up being:
# (.4 * .05)/ (.4 * .05 + .6 * .03) = (.4 * .05)/0.038 = .526

#Empirical probability:
factoryA <- 0.6
factoryB <- 0.4
defectiveA <- 0.03
defectiveB <- 0.05
n_sim <- 100000
countA <- 0
countB <- 0
for(i in 1:n_sim){
    #results is the result of the first sample, which is the factory that the defective part was produced in.
    results <- sample(c("A", "B"), 1, replace = TRUE, prob = c(factoryA, factoryB))
    if(results == "A"){
        #results2 is the result of the second sample, which is the machine that the defective part was produced in if it was produced in factory A.
        results2 <- sample(c("defective", "working"), 1, replace = TRUE, prob = c(defectiveA, defectiveB))
        if(results2 == "defective"){
            countA <- countA + 1
        }
        else{
            countB <- countB + 1
        }
    }
    else{
        #results3 is the result of the second sample if the defective part was produced in factory B.
        results3 <- sample(c("defective", "working"), 1, replace = TRUE, prob = c(defectiveB, defectiveA))
        if(results3 == "defective"){
            countA <- countA + 1
        }
        else{
            countB <- countB + 1
        }
    }
}
probB <- countB / n_sim
print(probB)
