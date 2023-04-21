#Max Casteel
#Homework 7

# 1) Write R simulations for the following. In each case, give a histogram of the estimated distribution
#(use the hist command) and estimates of the expected value and standard deviation of the quantity.
#Use at least 1 million simulations.
#a)the distance between two points chosen randomly from the interval (0,1)
set.seed(1)
x <- runif(1e6,0,1)
y <- runif(1e6,0,1)
z <- abs(x-y)
hist(z)
mean(z)
sd(z)

#b) The distance between two points chosen  randomly within the unit square:
set.seed(1)
x <- runif(1e6,0,1)
y <- runif(1e6,0,1)
z <- sqrt((x-y)^2+(x-y)^2)
hist(z)
mean(z)
sd(z)

#2
#Use a simulation to estimate the proability that the quadratic equation: Ax^2 + Bx + c = 0 hs real roots when A, B, and C are chosen at random from the interval (-1,1) independently of each other. Use at least 1 million simulations.
set.seed(1)
A <- runif(1000000,-1,1)
B <- runif(1000000,-1,1)
C <- runif(1000000,-1,1)
D <- B^2-4*A*C
E <- D>0
mean(E)

#3




