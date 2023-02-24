#Max Casteel
#Roll 2 dice, fair 6-sided, whats the probability of getting a total of atleast 7.
#The thoeretical probability is .6.
#We have the following outcomes:  
die1 <- sample(1:6, 1, replace = TRUE)
die2 <- sample(1:6, 1, replace = TRUE)
nsim <- 10000
#rOLL 2 DICE, CHECK IF ONLY 1 IS 4 AND ALSO IF THEY ARE ATLEAST EQQAL TO 7.


count_A <- 0
sum <- die1 + die2

for(i in 1:nsim){
    if(sum >= 7 && (die1 == 4 || die2 == 4) && (die1 != die2)){
    count_A <- sum(count_A) + 1
    print("Success")
    }

}
count_A/nsim

