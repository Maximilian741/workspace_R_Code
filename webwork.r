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
ppois(2,4.5, lower.tail=TRUE)
ppois(2, 4.5, lower.tail=FALSE)

#P(X>5) when mean is 0.5
ppois(5,0.5,lower.tail=FALSE)
#P(X < 9) when mean is 4
ppois(8,4)

#On average, there are 4.3 accidents that occur at a busy intersection per week. Find the probability of the following events assuming a Poisson model. Keep at least 5 decimal places.
#A) No accident occur in a week.
ppois(0,4.3)
ppois(0,4.3, lower.tail=TRUE)
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

#EXPONENTIAL DISTRIBUTION
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


#UNIFORM
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

#Customers arrive at a donut shop according to a poisson process with a rate of 1 cust every 10 minutes.  Let T be the time until te next customer arrives.  What is P
#P(Customer show up in 12 minutes)
pexp(12,1/10)

#B) 90 seconds
pexp(1.5,1/10)

#C) 10 minutes?
pexp(30,1/10)


#pnorm (q = 0.5, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE )
#in this scenario q is equivalent to x where x is the value of the random variable.

pnorm(537, 459, 39, lower.tail=TRUE) - pnorm(459,459,39, lower.tail=TRUE)

pnorm(91, 101, 15, lower.tail = FALSE)
#pgamma

#The annual rainfal in a city closely follows a normal distribution with a mean of 40 and sd of 4 inches.  

#What proportion of years have over 50 inches of rainfall?
pnorm(50,40,4,lower.tail=FALSE)

#Either belwo30 inches or above 55 inches?
pnorm(30,40,4, lower.tail = TRUE) + pnorm(55,40,4,lower.tail=FALSE)

#Between 35 and 50 inches?
pnorm(50,40,4,lower.tail=TRUE) - pnorm(35,40,4,lower.tail=TRUE)

#85% of the time annual rainfall amounts will be within how many inches of average?
qnorm(0.85,40,4,lower.tail=TRUE) - qnorm(0.15,40,4,lower.tail=TRUE)

#10% of annual rainfalls are more than what value?
qnorm(0.1,40,4,lower.tail=FALSE)

qnorm(0.05, 400, 160, lower.tail = TRUE)
qnorm(.95, 400, 160, lower.tail = FALSE)

#Whats the probability the next 5 years expereince at least two years with below average rainfall?


#Ted's bowling scores are approximately normally distributed with mean 140 and sd 11,  while Jack's scores are normally distributed with mean 105 and sd 12. If Ted and Jack each bowl one game, then assuming that their scores are independent random variables, approximate the probability that the total of their scores is above 225.
#This is a normal distribution because the bowling scores are approximately normally distributed with mean 140 and sd 11,  while Jack's scores are normally distributed with mean 105 and sd 12.
#x = 225 because we are looking for the probability that the total of their scores is above 225.
#mean = 140 + 105 = 245 because the bowling scores are approximately normally distributed with mean 140 and sd 11,  while Jack's scores are normally distributed with mean 105 and sd 12.
#sd = sqrt(11^2 + 12^2) = 16.1554944214035 because the bowling scores are approximately normally distributed with mean 140 and sd 11,  while Jack's scores are normally distributed with mean 105 and sd 12.
pnorm(225,245,16.1554944214035,lower.tail=FALSE)

#Scores on a certain intelligence test for children between ages 13 and 15 years are approximately normally distributed with mean = 101 and sd = 15.   Enter the score which marks the lowest 20 percent of the distribution.

qnorm(0.2,101,15,lower.tail=TRUE)

# Enter the score which marks the highest 5 percent of the distribution.
qnorm(0.95,101,15,lower.tail=TRUE)

#Two computer specialists are completing work orders. Incoming jobs are randomly assigned to the first specialist with probability 0.63 and to the second specialist with probability 0.37. The time it takes the first specialist to complete an order is a normal random variable with mean 3.8 hours and standard deviation 1 hour and the time it takes the second specialist is normal with mean 4.3 hours and standard deviation 1.5 hours. Please give your answers to the nearest 0.001. You submit an order. What's the probability it will take more than 3 hours?
pnorm(3,3.8,1,lower.tail=FALSE)*0.63 + pnorm(3,4.3,1.5,lower.tail=FALSE)*0.37

#A certain order was submitted 5 hours ago and is still not ready. What is the probability that the first specialist is working on it?
pnorm(5,3.8,1,lower.tail=FALSE)*0.63/(pnorm(5,3.8,1,lower.tail=FALSE)*0.63 + pnorm(5,4.3,1.5,lower.tail=FALSE)*0.37)

#An average scanned image occupies 1.9 megabytes of memory with a standard deviation of 0.5 megabytes. If you plan to publish 74 images on your website, use the Central Limit Theorem to approximate the probability that their total size is between 135 and 144 megabytes. Answer to the nearest 0.001.
pnorm(144,74*1.9,sqrt(74)*0.5,lower.tail=TRUE) - pnorm(135,74*1.9,sqrt(74)*0.5,lower.tail=TRUE)


#The time it takes Alice to walk to the bus stop from her home is Normally distributed with mean 11 minutes and standard deviation 3 minutes. The waiting time for the bus to arrive is Normally distributed with mean 5 minutes and standard deviation 1 minutes. Her bus journey to the UBC bus loop is a Normal variable with mean 24 and standard deviation 5 minutes. The time it take Alice to walk from the bus loop to the lecture theatre to attend STAT 251 is Normally distributed with mean 18 minutes and standard deviation 2 minutes. The total time taken for Alice to travel from her home to her STAT 251 lecture is Normally distributed. What is the mean travel time (in minutes)?
11 + 5 + 24 + 18

#What is the standard deviation of Alice's travel time (in minutes, to 2 decimal places)? Assume that the travel times for the four segments are independent random variables.
sqrt(3^2 + 1^2 + 5^2 + 2^2)

#The STAT 251 class starts at 8 am sharp. Alice leaves home at 7 am. What is the probability (to 3 decimal places) that Alice will not be late for her class?
pnorm(60,58,sqrt(39),lower.tail=TRUE)

#Consider a normal distribution curve where the middle 75 % of the area under the curve lies above the interval ( 7 , 19 ). Use this information to find the mean, and sd of the distribution.
#mean = 13

#suppose that x is normally distributed with mean 90 and sd of 30.  What is the prob that x is greater than 135.6?
pnorm(135.6,90,30,lower.tail=FALSE)

#This is the value that only the top 18% of the values are greater than.
qnorm(.82, 90, 30, lower.tail = TRUE)

#The diameter of steel pins, in mm follows a N(10.00, 0.02) distribution.  The diameters of the openings into which the pins are supposed to fit follow a N(10.01,0.01) distribution.  What's the probability a randomly-selected pin will not fit into a randomly selected opening?
pnorm(10.01,10,0.02,lower.tail=FALSE) + pnorm(10,10.01,0.01,lower.tail=TRUE)

#Suppose the distribution of the weights, in ounces, of Valencia oranges in a shipment are N(4,1) and the weights of navel oranges in another shipment are N(7,2).  If I randomly select a Valencia orange and a navel orange, what's the probability that the navel weighs more than TWICE as much as the Valencia orange?
pnorm(8,7,2,lower.tail=FALSE)

pnorm(539, 589, 35, lower.tail = FALSE)

#Suppose the scores of students on a statistices course are Noramlaly distributed with a mean of 589 and sd of 35.  
#Whats the prob a student will score less than 1 sd below average?
pnorm(554,589,35,lower.tail=TRUE)

#What proportion of scores are less than 50 points from average?
pnorm(639,589,35,lower.tail=TRUE) - pnorm(539,589,35,lower.tail=TRUE)
#90 percent of the time a student will score more than what value?
qnorm(0.1,589,35,lower.tail=TRUE)

#90 percent of the time the sum of the scores from two seperate students will be more than what value?
qnorm(0.95,589,49.497,lower.tail=TRUE)

#If y = avg score from two students.
#95 percent of the time y will be less than what value?
qnorm(0.95,589,49.497,lower.tail=TRUE)

#the middle 90% of average scores from a class of 20 students is between what two values?


#Suppose the actual weight of potato chips in 16 ounce bags of chips follow a nomral dist with men 16.2, sd 0.3.  #Assuming sd remians the same, what value should the mean be set to so that 1% of bags are underwieght?
qnorm(0.01,16.2,0.3,lower.tail=TRUE)

#Assuming the mean new weight remains the same, what value of the sd would need to achieve so that 1% of the bags are underweight?

pnorm(16,16.2,0.8597)







