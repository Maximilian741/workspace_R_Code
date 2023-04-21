#Customers arrive at a grocery store at an average of 2.1 per minute. Assume that the number of arrivals in any interval follows the Poisson distribution. Provide answers to the following to 3 decimal places.

#What is the probability that exactly two customers arrive in a minute?
dpois(2,2.1)


#Find the probability that more than three customers arrive in a two-minute period.
ppois(3,2.1*2,lower.tail=FALSE)

#A jar holds 18 cookies, 11 are chocolate-chip cookies, and 7 are brussel-spout-with-turnip-chips cookies. You pick 3 cookies at random. What is the probability that you get exactly 1 of the brussel-spout-with-turnip-chips cookies?
choose(7,1)*choose(11,2)/choose(18,3)

#A certain typing agency employs two typists. The average number of errors per article is 3.6
# when typed by the first typist and 4.9
# when typed by the second. If your article is equally likely to be typed by either typist, find the probability that it will have no errors.

#Complaints about an Internet brokerage firm occur at a rate of 5 per day. The number of complaints appears to be Poisson distributed.
#A. Find the probability that the firm receives 7 or more complaints in a day.
ppois(6,5,lower.tail=FALSE)

 #Find the probability that the firm receives 22 or more complaints in a 4-day period.
ppois(21,5*4,lower.tail=FALSE)

#Find the probability of throwing a sum of 7 at least 2 times in 9 throws of a pair of fair 6-sided dice. Answer to the nearest 0.0001.
#(1/36)*(1/36)*(1/6)*(1/6)*(1/6)*(1/6)*(1/6)*(1/6)*(1/6) = .000001

#Assume that the monthly worldwide average number of airplaine crashes of commercial airlines is 2.2
#. What is the probability that there will be

#a) less than 3 such crashes in the next month?
ppois(2,2.2)

#B) more than 6 such crashes in the next 3 moths?
ppois(6,2.2*3,lower.tail=FALSE)

#c) exactly 6 such accidents in the next 5 months
dpois(6,2.2*5)

#Given that X is a random variable having a Poisson distribution, compute the following:
#P(X=1) when mean is 3.5.
dpois(1,3.5)
#P(X<=2) when mean is 4.5
ppois(2,4.5)
#P(X>5) when mean is 0.5
ppois(5,0.5,lower.tail=FALSE)
#P(X < 9) when mean is 4
ppois(8,4)

#On average, there are 4.3 accidents that occur at a busy intersection per week. Find the probability of the following events assuming a Poisson model. Keep at least 5 decimal places.
#A) No accident occur in a week.
ppois(0,4.3)
#B) 3 or more accidents occur in a week.
#(X>= 3) = 1 - (X<3)
ppois(2,4.3,lower.tail=FALSE)
#C) OOne acident occurs today.
dpois(1,4.3/7)

dpois(0,70/290)
ppois(0,70/290,lower.tail=FALSE)

#If X is a binomial random variable, compute each of the following probabilities:
#A) P(X <=2) n = 8, p = 0.3
pbinom(2,8,0.3)

#B) P(X > 2), n = 3, p = 0.4
pbinom(2,3,0.4,lower.tail=FALSE)

#C) P(X < 4) n = 5, p = 0.9
pbinom(3,5,0.9)

#D) P(X >= 5) n = 7, p = 0.4
pbinom(4,7,0.4,lower.tail=FALSE)


#A biotechnology company produced 199 doses of somatropin, including 8 which were defective. Quality control test 15 samples at random, and rejects the batch if any of the random samples are found defective. What is the probability that the batch gets rejected?
pbinom(7,15,8/199)
dbinom(7,15,8/199)

1 - pgeom(3,0.5)
?dbinom
dpois(0,1.5)
dpois(0,3)

1- ppois(1,3.6)

#Suppose that the time (in hours) required to repair a machine is an exponentially distributed random variable with parameter lambda = 0.5. What is:
#a) the probability that a repair time exceeds 9 hours?
#This is an exp distributuion because we are talking about time in accordance between each event on a popisson distribution.
#The probability that a repair time exceeds 9 hours is the probability that the repair time is less than 9 hours.
pexp(9,0.5,lower.tail=FALSE)

#The condiaitonal proability that a repair takes 6 hours, given that it takes more than 3 hours?

pexp(6,0.5,lower.tail=FALSE)/pexp(3,0.5,lower.tail=FALSE)

#The manager of a gas station has observed that the times required by drivers to fill their car's tank and pay are quite variable. In fact, the times are exponentially distributed with a mean of 7 minutes. What is the probability that a car can complete the transaction in less than 6 minutes?
#x = 6 because we are looking for the probability that a car can complete the transaction in less than 6 minutes.
#lambda = 1/7 because the mean is 7 minutes and we are looking for the probability that a car can complete the transaction in less than 6 minutes. which is 1- 6/7 = 1/7
pexp(6,1/7)

#The weather in Rochester in December is fairly constant. Records indicate that the low temperature for each day of the month has a uniform distribution over the interval 15 degrees to 35 degrees. F. A visitor arrives on a randomly selected day in December.

#What is the probability that the tempereature will be ebtween 17 and 28 degrees?

#A bank wishing to increase its customer base advertises that it has the fastest service and that virtually all of its customers are served in less than 9 minutes. A management scientist has studied the service times and concluded that service times are exponentially distributed with a mean of 5 minutes. Determine what the bank means when it claims 'virtually all' its customers are served in under 9 minutes.
#Proportion of customers served in under 9 minutes =
1 - pexp(9,1/5,lower.tail=FALSE)

#Suppose the time to process a loan application follows a uniform distribution over the range of 8 to 15 days.  What is the probability that a randomly selected loan application takes longer than 11 days to proicess?

# this is a uniform distribution because the time to process a loan application follows a uniform distribution over the range of 8 to 15 days.
#x = 11 because we are looking for the probability that a randomly selected loan application takes longer than 11 days to proicess.
#min = 8 and max = 15 because the time to process a loan application follows a uniform distribution over the range of 8 to 15 days.
punif(11,8,15,lower.tail=FALSE)

#Two points are selected randomly on a line segment of length 32 one on each side of the midpoint of the line. That is, the two points X and Yare independent random variables such that  X is uniformly distributed over (0,16), and Y is uniformly distribited over (16,32). Find the probability that the distance between the two points is greater than 8 units.
#This is a uniform distribution because the two points X and Yare independent random variables such that  X is uniformly distributed over (0,16), and Y is uniformly distribited over (16,32).  
#x = 8 because we are looking for the probability that the distance between the two points is greater than 8 units.
#min = 0 and max = 16 because the two points X and Yare independent random variables such that  X is uniformly distributed over (0,16), and Y is uniformly distribited over (16,32).

nsim = 10000
x = runif(nsim,0,16)
y = runif(nsim,16,32)
mean(abs(x-y)>8)



