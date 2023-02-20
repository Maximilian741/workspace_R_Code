#Max Casteel
#2/14/2023
#Homework 3

#Problem 1
#Intialize variables
nsim <- 10000
npick <- 3
nwhite <- 6
nred <- 5
nblue <- 4
nmarbles <- nwhite + nred + nblue

# Theoretical probability
(choose(nwhite, npick) + choose(nred, npick) + choose(nblue, npick))/choose(nmarbles, npick)

# Empirical probability
# Create a vector of the colors
marbles <- c(rep("white", nwhite), rep("red", nred), rep("blue", nblue))
# Create a matrix of the outcomes.  I am using a matrix because it is easier to index the rows and columns, but a vector would work just as well.
#You would still need to change the logic of the below code as it only works with a matrix.
outcomes <- matrix(NA, nrow = nsim, ncol = npick)
# Loop through the simulations
for (i in 1:nsim) {
  # Randomly pick the marbles and index the outcomes matrix[i,i(i+1)(i+2))].
  outcomes[i, ] <- sample(marbles, npick, replace = FALSE)
}
# Count the number of times all three marbles are the same color, then divide by the number of simulations.
# I am using the apply function to loop through the rows of the outcomes matrix and count the number of unique values in each row.
# If the number of unique values is 1, then all three marbles are the same color, and we are summing the number of times this occurs.
sum(apply(outcomes, 1, function(x) length(unique(x)) == 1))/nsim


#Problem 2
#P(Xandra hits bullseye) = 0.7
#P(Marco hits bullseye) = 0.6
#P(Cade hits bullseye) = 0.4
prob_A <- 0.7
prob_B <- 0.6
prob_C <- 0.4
# Set the number of simulations
num_sims <- 10000
# Run the simulations
count_A <- 0
count_B <- 0
count_C <- 0
for (i in 1:num_sims) {
  # Simulate shooting arrows
  hits <- sample(c("A", "B", "C"), size = 1, replace = FALSE, prob = c(prob_A, prob_B, prob_C))
  if (hits == "A") {
    # Increment the count for the archer who hit the bullseye
    count_A <- count_A + 1
  }
  else if (hits == "B" ) {
    # Increment the count for the archer who hit the bullseye
    count_B <- count_B + 1
  }
  else if (hits == "C") {
    # Increment the count for the archer who hit the bullseye
    count_C <- count_C + 1
  }
}
# Calculate the empirical probabilities
empirical_prob_A <- count_A/num_sims
empirical_prob_B <- count_B/num_sims
empirical_prob_C <- count_C/num_sims
# Print the results
print(empirical_prob_A)
print(empirical_prob_B)
print(empirical_prob_C)
