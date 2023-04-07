
#Max Casteel
#3/28/2023
#Homework 6
#R commands that wil be used: if X in Binom(n = size, P = prob) then P(X = x) ==> dbinom(x, size, prob)  AND P(X <= x) ==> pbinom(x, size, prob).

#1) I take a 20-question multiple choice exam with 4 choices on each question. If I randomly choose an answer for
#each question,

#1a) What is the probability I get exactly 8 questions correct?
#This is, in terms of counting, is equal to (1/4) * (1/4) * (1/4) * (1/4) * (3/4)^12 = (1/4)^8 * (3/4)^12 * (20 choose 8), which is a binomial distribution with n = 20, p = 1/4, and x = 8.
dbinom(8, 20, 1/4)
#1b) What's the probability I get 4 or 5 correct?
dbinom(4, 20, 1/4) + dbinom(5, 20, 1/4)

#1c) If I need to get atleast 60% right to pass, what's the probability I pass?
#This is equivalent to needting to get 12 answers correct to pass.  Thus we have 1 - P(X < 12) = 1 - pbinom(11, 20, 1/4)
pbinom(12, 20, 1/4)
#define the pbinom function below:
#pbinom(x, size, prob) = sum from i = 0 to x of dbinom(i, size, prob)
#So we need P(X <= 12) = 1 - pbinom(11, 20, 1/4)
pbinom(12, 20, 1/4)


#2) An airline sells 85 tickets for its daily flight to Seattle, but the plane only holds 80 passengers. Based on past
#experience, the probability a passenger doesn’t show up for the flight is 0.1.

#2a) Give the distribution (including numerical value of
#relevant parameters) for X = the number of passengers who show up.
#This is following a binomial distribution with n = 85 and p = 0.9.
#The pmf is given by: P(X = x) n choose x * p^x * (1-p)^(n-x).

#2b) Find the probability exactly 75 passengers show up
#for this flight.
dbinom(75, 85, 0.9)

#2c) Find the probability less than 75 passengers show
#up for this flight.
pbinom(74, 85, 0.9)

#2d) Find the probability between 70 and 80 passengers
#show up for this flight, inclusive.
#This problem is more tricky because we are looking for P(70 <= X <= 80) = P(X <= 80) - P(X <= 69) = pbinom(80, 85, 0.9) - pbinom(69, 85, 0.9)
pbinom(80, 85, 0.9) - pbinom(69, 85, 0.9)

#2e) Find the probability some passengers will have to
#be bumped?
#This is equivalent to P(X > 80) = 1 - P(X <= 80) = 1 - pbinom(80, 85, 0.9)
1 - pbinom(80, 85, 0.9)

#2f) What’s the maximum number of tickets they can
#sell and still have less than a 1% chance that some
#passengers will have to be bumped?
#With 80 tickets we have a 0% chance of bumping passengers as all the passengers have one seat. 
#With 81 tickets we have a 0.1% chance of bumping passengers as P(X = 81) = 0.001.

#3) If X = the number of trials necessary to achieve the first “success” in a succession of independent Bernoulli trials,
#X is said to have a Geometric distribution with a single Parameter, P.
#For the Seattle flight problem. Imagine you work for the airline and have an ordered list of all the ticket holders.

#3a) What’s the probability that the first passenger that
#doesn’t show up is the 5th one on the list?

#3b) Give an expression for the probability the nth passenger is the first one that doesn’t show up.

#3c) Give an expression for the pmf for a Geometric
#random variable having parameter P.

#3d) Verify your answer to part a using the pgeom()
#function in R. What do you notice about pgeom()?

1 - pbinom(25, 105, .15)





