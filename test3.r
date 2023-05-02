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

#‘Bootstrapping’ data refers to resampling a dataset repeatedly, with replacement, and where these resamples are of the same size as the original sample.
#When a numerical summary (such as the median) is calculated from each of these resamples, the
#resulting set of values of that statistic is known as the ‘Bootstrapped distribution’ (of that value). The
#bootstrapped distribution can be examined to determine important properties of that statistic.
#Give the R code necessaary to create a single bootstrapped resample from the values of X in this dataset:
sample(ex0223$FatalitiesChange, replace = TRUE)
hist(sample(ex0223$FatalitiesChange, replace = TRUE))

#Give the R-Code necessary to create a vector of 10000 sample means, each one from a different bootstrapped sample.
vectorr <- numeric(10000)
for (i in 1:10000) {
  vectorr[i] <- mean(sample(ex0223$FatalitiesChange, replace = TRUE))
}
hist(vectorr)



#Use the quantile function to obtain the sample mean values of X that correspond to the middle
#95% of your bootstrapped distribution. (This is a 95% Confidence Interval for the average
#percentage change in interstate highway traffic fatalities when raising the speed limit. )
#it ix .025 and .975 because it is a two tailed test.  Meaning that we are looking for the middle 95% of the data.  The middle 95% of the data is 2.5% on each side of the data.  So we are looking for the 2.5% and 97.5% quantiles.  The 2.5% quantile is the lower bound and the 97.5% quantile is the upper bound.
quantile(vectorr, c(0.025, 0.975))

#Using 10,000 resamples, create a 95% Bootstrapped Confidence Interval for the average percentage change in interstate highway traffic fatalities when the speed limit remains at 55mph.
no_increase_means <- numeric(10000)
for (i in 1:10000) {
  no_increase_means[i] <- mean(sample(ex0223[ex0223$Increase == "No", "FatalitiesChange"], replace = TRUE))
}
quantile(no_increase_means, c(0.025, 0.975))

#Using 10,000 resamples, create a 95% Bootstrapped Confidence Interval for the average DIFFERENCE in the average Percentage change in interstate highway traffic fatalities when the
#speed limit is unchanged and when it is raised. This sounds a bit confusing as the variable we
#are examining already represents a change, and we are looking at changes in that variable
#between two groups. But the idea is that we are looking at the difference in the average
#change between the two groups. So, for each resample, we need to calculate the average
#change in the group that raised the speed limit, and the average change in the group that
#did not raise the speed limit, and then take the difference between those two averages.
vectorr <- numeric(10000)
for (i in 1:10000) {
  vectorr[i] <- mean(sample(ex0223[ex0223$Increase == "Yes", ]$FatalitiesChange, replace = TRUE)) - mean(sample(ex0223[ex0223$Increase == "No", ]$FatalitiesChange, replace = TRUE))
}
quantile(vectorr, c(0.025, 0.975))

#5
#Suppose there’s a 1% chance you make a mistake typing a particular character on your keyboard and
#a 2-page single-spaced essay has 7000 characters.
#If X = the number of mistakes on such an essay

#(a) Give the name of the exact distribution of X, and the numerical value(s) of any relevant parameter(s).
#Binomial(7000, 0.01)

#(b) Find p(X = 70)
dbinom(70, 7000, 0.01)

#(c) Find P(X > 75)
1 - pbinom(75, 7000, 0.01)
pbinom(75,7000,0.01, lower.tail = FALSE)

#(d) Find P(70 <= X <= 75)
pbinom(75, 7000, 0.01) - pbinom(69, 7000, 0.01)

#(e) Fine E(X) and SD(X)
7000 * 0.01
sqrt(7000 * 0.01 * 0.99)

#(f) Give the R code to simulate the number of errors per essay in 10000 such essays with this error rate and save the results.
result <- numeric(10000)
for(i in 1:10000) {
  result <- c(rbinom(1, 7000, 0.01))
}

#(g) What proportion of the time did your simulation produce an error rate higher than expected?
mean(result > 70)

#(h) WHat proportion of the time did your simulation produce an error rate less than two standard deviations below the expected value?
mean(result < 70 - 2 * sqrt(7000 * 0.01 * 0.99))

#(i) Use a simulation to estimate P(mean - 2sd < x < mean + 2sd)
result <- numeric(10000)
for(i in 1:10000) {
  result <- c(rbinom(1, 7000, 0.01))
}
mean(result > 70 - 2 * sqrt(7000 * 0.01 * 0.99) & result < 70 + 2 * sqrt(7000 * 0.01 * 0.99))

#(j) Let z = the average number of mistakes in a group of 30 such essays.  Use a simluation to estimate E(z) and SD(z).
result <- numeric(10000)
for(i in 1:10000) {
  result <- c(rbinom(30, 7000, 0.01))
}
mean(result)
sd(result)

#(k) Use a simulation to estimate P(E(z) - 2SD(z) < z < E(z) + 2SD(z))
result <- numeric(10000)
for(i in 1:10000) {
  result <- c(rbinom(30, 7000, 0.01))
}
mean(result > mean(result) - 2 * sd(result) & result < mean(result) + 2 * sd(result))
