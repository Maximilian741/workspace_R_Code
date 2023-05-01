#1.
#A supercomputer is shared by 500 independent subscribers. Each day, the probability a user will
#be working on a project where the supercomputer might be needed is 0.35 independently of the other
#subscribers. The number of tasks sent by each of these active users has a Poisson distribution with mean
#λ = 3.5 and the computer time each task takes, in minutes, follows a Gamma(10,4) distribution. Tasks
#are processed consecutively.
#Note: the Gamma distribution is discussed at the end of the Lec13 slides, but you don’t need to know anything about it other than how to simulate values from it: rgamma(n,a,b) simulates n values from a gamma
#distribution with parameters a and b (I call the second parameter λ in the Lecture 13 slides, but want to
#avoid confusion with the parameter λ of the Poisson in this problem). Use curve(dgamma(x,10,4),0,10)
#to see the pdf of a Gamma(10,4) random variable (but don’t include the plot). It has mean 10/4.
n <- 100000
total_time <- numeric(n)
for (i in 1:n) {
  active_users <- rbinom(1, 500, 0.35)
  tasks <- sum(rpois(active_users, 3.5))
  task_times <- sum(rgamma(tasks, 10, 4))
  total_time[i] <- task_times
}
mean_time <- mean(total_time)/60
prob_24h <- mean(total_time <= 24*60)

mean_time
prob_24h

#----------------------------------------------------------------------------
#2. 
#Use the output from #1 to answer this question (you don’t need to rerun the simulation). You
#are employed by the supercomputer center which is unhappy that it is only able to process all
#submitted jobs on about 21% of days. They want to add enough computing power so that there’s
#a 95% probability that the jobs submitted in a day can be completed in 24 hours. So they want
#to increase the number of computer-minutes available in a day from the current 1440 by adding
#additional computing power. They ask you: by how much should they increase the computing
#power (that is, the number of computer-minutes available) so that there’s a 95% chance that a
#day’s jobs can be completed? (Note: don’t use a normal approximation. Use the results of your
#simulation. See the quantile function).
required_minutes <- quantile(total_time, 0.95)
additional_minutes <- required_minutes - 24*60
round(additional_minutes)

#----------------------------------------------------------------------------
#3
#Recently, it has been discovered that about 3% of jobs submitted are using some new deep learning
#software and that the time to process these big jobs is much longer than the others. The times
#for these jobs are estimated to follow a Gamma(3,0.2) distribution (mean 15). To simulate this
#modification, use sample with prob option to generate 0/1 indicator variables, with probability
#0.03 of a 1, for all the jobs on a given day where 1 indicates it’s a big job. Answer these two
#questions based on your new simulation: what is the estimated probability that all the tasks will
#be processed within 24 hours? By how much should they increase the computing power (that is,
#the number of computer-minutes available) so that there’s a 95% chance that a day’s jobs can be
#completed?
n <- 100000
total_time <- numeric(n)
for (i in 1:n) {
  active_users <- rbinom(1, 500, 0.35)
  tasks <- sum(rpois(active_users, 3.5))
  big_jobs <- sample(c(0,1), size = tasks, replace = TRUE, prob = c(0.97,0.03))
  task_times <- sum(rgamma(tasks, shape = ifelse(big_jobs == 1, 3, 10), rate = ifelse(big_jobs == 1, 0.2, 4)))
  total_time[i] <- task_times
}
prob_24h <- mean(total_time <= 24*60)
required_minutes <- quantile(total_time, 0.95)
additional_minutes <- required_minutes - 24*60
round(prob_24h, 3)
round(additional_minutes)

#----------------------------------------------------------------------------
#4
#At a certain coffee shop, all the customers (strangely) buy exactly one cup of coffee; some also
#buy a doughnut. The shop owner believes that the number of cups he sells each day is Normally
#distributed with a mean of 320 cups and a standard deviation of 20 cups. He also believes that the
#number of doughnuts he sells each day is independent of the coffee sales and is Normally distributed
#with a mean of 150 doughnuts and a standard deviation of 12.


#a) The shop is open every day but Sunday. Assuming day-to-day sales are independent, find the
#expected number of cups of coffee sold per week.
6 * 320

#b) Find the standard deviation for the number of cups of coffee sold per week.
sqrt(6) * 20

#c) What distribution can we use to model the number of cups of coffee sold per week? For the distribution you choose, include the numeric value of any relevant parameters.
#Normal(1920, 48.99)

#d) What’s the probability he’ll sell more than 2000 cups of coffee in a week?
pnorm(2000, 1920, 48.99, lower.tail = FALSE)
#or
p_more_than_2000 <- 1 - pnorm(2000, mean =1920, sd = 48.99)
p_more_than_2000

#e) If he makes a profit of 50 cents on each cup of coffee and 40 cents on each doughnut, can he reasonably expect to have a day’s profit over $300? Answering this question requires determining the probability of seeing a one-day profit over $300. Calculate that probability as well.
n_sims <- 100000
coffee_sales <- rnorm(n_sims, mean = 320, sd = 20)
doughnut_sales <- rnorm(n_sims, mean = 150, sd = 12)
daily_profit <- 0.5 * coffee_sales + 0.4 * doughnut_sales
p_profit_over_300 <- mean(daily_profit > 300)

p_profit_over_300
#No, he can’t reasonably expect to have a day’s profit over $300.  The probability of seeing a one-day profit over $300 rounded to 10 decimal places is zero.
#.0002 is from the p_profit_over_300.


#f)What the probability that on any given day he’ll sell a doughnut to more than half of his coffee customers?
#parameters of pnorm: x, mean, sd, 
p_doughnut <- pnorm(160, 150, 12, lower.tail = FALSE)
p_doughnut

#Test 3
install.packages("Sleuth2")
library(Sleuth2)

ex0223[1,3]

ex0223[2,]

ex0223[ex0223$Increase == "No", ]

ex0223[ex0223$Increase == "No", 3]

#Give data values only for states that increased their speed ;imit and saw a decrease in traffic fatlity rate:
ex0223[ex0223$Increase == "Yes" & ex0223$FatalitiesChange < 0, ] 

#Let X = Percentage change in interstate highway traffic fatalitites for states that raised their speed limit:

#Obtain all values of X from ex0223:
ex0223$FatalitiesChange

#Give the R code necessaary to create a single bootstrapped resample from the values of X in this dataset:
sample(ex0223$FatalitiesChange, replace = TRUE)

#Give the R-Code necessary to create a vector of 10000 sample means, each one from a different bootstrapped sample.
vectorr <- sample(ex0223$FatalitiesChange, replace = TRUE)

#Create a histogram of the bootstrapped sample means:
hist(vectorr)

#Give the R-Code necessary to create a vector of 10000 sample means, each one from a different bootstrapped sample.
vectorr <- 0

for(i in 1: 10000){
  vectorr[i] <- sample(ex0223$FatalitiesChange, replace = TRUE)
}
hist(mean(vectorr))


