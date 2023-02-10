#A bag contains 9 red marbles,  9white, 8 blue.  Pick 3 marbles from the bag without replacement and let X be the number of red marbles picked.  Find the probability that X=3.

# Set up the problem
library(prob)
bag <- c(rep("red", 9), rep("white", 9), rep("blue", 8))

choose(9, 3) / choose(26, 3)
26 - 9

(choose(9,2) * 17) / choose(26, 3)

#Prob that none of the marbles are red:
choose(17, 3) / choose(26, 3)

factorial(9) / (factorial(3) * factorial(3) * factorial(3))
choose(9,2)


1 - (choose(8,4)/ choose(10,4))



30/choose(11,2)
#A box contains 60 balls numbered 1 to 60.  If 7 balls are drawn WITH replacement, find the probability that at least two of the balls have the same number.

(5/11 * 6/10)

choose(48,4) * 4 

4 * choose(13,5)

60 * 59 * 58 * 57 * 56 * 55 * 54

(60^7 - 60 * 59 * 58 * 57 * 56 * 55 * 54)/60^7




#For loop from class
results <- c()
for(i in 1:10000){
    heads <- sample(1:2, 5, replace = TRUE)
    TF <- heads == 1
    count <- sum(TF)
    results[i] <- count == 2
}
mean(results)




