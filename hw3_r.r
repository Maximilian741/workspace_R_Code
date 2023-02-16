#Max Casteel
#2/14/2023
#Homework 3

#Problem 1
#    A bag contains six white marbles, five red marbles, and four blue marbles. Norka will reach into the
#    bag and pull out three marbles at the same time. An outcome for this experiment consists of the color of
#    each marble obtained.

#Intialize variables
nsim <- 1000000
npick <- 3
nwhite <- 6
nred <- 5
nblue <- 4
nmarbles <- nwhite + nred + nblue
# theoretical probability
(choose(nwhite, npick) + choose(nred, npick) + choose(nblue, npick))/choose(nmarbles, npick)


# empirical probability
# create a vector of the colors
marbles <- c(rep("white", nwhite), rep("red", nred), rep("blue", nblue))
# create a matrix of the outcomes
outcomes <- matrix(NA, nrow = nsim, ncol = npick)
# loop through the simulations
for (i in 1:nsim) {
# randomly pick the marbles
  outcomes[i, ] <- sample(marbles, npick, replace = FALSE)
}
# count the number of times all three marbles are the same color
sum(apply(outcomes, 1, function(x) length(unique(x)) == 1))/nsim


#Problem 2
#
