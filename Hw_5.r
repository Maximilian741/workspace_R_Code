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
#The probability is given by the r command: pbinom(10000, 10000, 0.5)

#------------------------------------------------#
#------------------------------------------------#
#3