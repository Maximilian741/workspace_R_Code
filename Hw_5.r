#Max Casteel
#Homework 5

#1
less_than_12_counter <- 0
more_than_12_counter <- 0
tie_counter <- 0
general_counter <- 0
die_poisiton <- c(1,2,3,4,5,6)

for(i in 1:100000){
    inner_loop_number_from_die_position <- sample(die_poisiton, 1, replace = TRUE)
    for(j in 1:inner_loop_number_from_die_position){
        general_counter <- general_counter + sample(die_poisiton, 1, replace = TRUE)
    }
    if(general_counter < 12){
        less_than_12_counter <- less_than_12_counter + 1
    }else if(general_counter > 12){
        more_than_12_counter <- more_than_12_counter + 1
    }else if (general_counter == 12){
       tie_counter <- tie_counter + 1
    }
    general_counter <- 0
}
less_than_12_counter/100000
more_than_12_counter/100000
tie_counter/100000


#2a
#There is n ways to pick the first integer from one to n.  And after the first integer is picked there are
#n ways again to pick the second integer from one to n.  Therefore there are n*n ways to pick two integers and this is our sample space.
#Now the probablility that the first number picked will be greater than the second number is (n-1)/2n
#2b
#2c
#2d

#Randomly pick 2 integers from 1 to n with replacement
#If the first integer is greater than the second integer, add 1 to the counter
#Divide the counter by the number of times the loop was run
first_integer <- 0
second_integer <- 0
counter <- 0
for(i in 1:100000){
    first_integer <- sample(1:10000, 1, replace = TRUE)
    second_integer <- sample(1:10000, 1, replace = TRUE)
    if(first_integer > second_integer){
        counter <- counter + 1
    }
}
counter/100000
#Expected value is given by the r command:
mean(rpois(100000, 10000/2))/10000

#for n = 4
fint <- 0
sint <- 0
count <- 0
for(i in 1:100000){
    fint <- sample(1:4, 1, replace = TRUE)
    sint <- sample(1:4, 1, replace = TRUE)
    if(fint > sint){
        count <- count + 1
    }
}
count/100000

#for n = 15
fint <- 0
sint <- 0
count <- 0
for(i in 1:100000){
    fint <- sample(1:15, 1, replace = TRUE)
    sint <- sample(1:15, 1, replace = TRUE)
    if(fint > sint){
        count <- count + 1
    }
}
count/100000

#------------------------------------------------#
#------------------------------------------------#
#3
#In the Powerball Lottery (https://powerball.com/index.php/games/powerball), 5 different
#numbers from 1 to 69 are selected. The order they’re selected doesn’t matter. (A 6th
#number, the red Powerball number is selected from the numbers 1 to 26 but this question
#only concerns the first 5 numbers selected.) Let X be the number of sets of two consecutive
#numbers in the 5 selected numbers. For example, X = 1 for 4 − 6 − 18 − 19 − 60 and X = 2
#for both 5 − 12 − 13 − 47 − 48 and 5 − 12 − 13 − 14 − 48. The minimum possible value for X
#is 0 and the maximum is 4. Remember, the order the numbers are drawn doesn’t matter so
#you will want to sort them.
#Carry out a simulation in R with at least 1 million replications and provide the following:
#• an estimate of E(X).
#• an estimate of the distribution (pmf) of X
#a consequetive number is one that comes after the next number.  Example: 1,2,3,4,5 has 4 consecutive numbers


nsim <- 1000000
x <- 0
x0 <- 0
x1 <- 0
x2 <- 0
x3 <- 0
x4 <- 0
y <- 0
for(i in 1:nsim){
    #sample 5 numbers from 1 to 69
    #sort the numbers
    #find the difference between the numbers, if the difference is 1, add 1 to the counter
    y <- sum(diff(sort(sample(1:69, 5, replace = TRUE))) == 1)
    x <- x + y
    if(y == 0){
        x0 <- x0 + 1
    } else if(y == 1){
        x1 <- x1 + 1
    } else if(y == 2){
        x2 <- x2 + 1
    } else if(y == 3){
        x3 <- x3 + 1
    } else if(y == 4){
        x4 <- x4 + 1
    }
}
#Estimate of E(X)
x/nsim
#Estimate of the distribution (pmf) of X
#x0-x4 are the number times each number of consecutive numbers was drawn respectively.
x0/nsim
x1/nsim
x2/nsim
x3/nsim
x4/nsim

#------------------------------------------------#



