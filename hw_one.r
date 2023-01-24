#Max Casteel
#Howmework 1

#Problem 1
#Taking my first name as given on this homework assignemnt, I will create a vector of the letters in my name.
#Suppose you write each letter of your name on a card and shuffle them.
#Calculate the following probabilities:
#(a) The probability that the first letter is an M
#(b) The probability of drawing a vowel.
#(c) The probability of drawing a 't'?
#(d) The probability of drawing a vowel or a 't'?


#(a) The probability that the first letter is an M
#The probability of drawing the first letter is 1/3
#The probability of drawing the first letter being an M is 1/3
#To simulate this, I will randomly sample from the vector myName 100 times,
#and then count the number of times the letter M is drawn as the first letter.
#I will then divide the number of times M is drawn as the first letter by 100.
#Create a vector of the letters in my name
myName <- c("M", "A", "X")
#Divide the number of times M is drawn as the first letter by 100
sum(sample(myName, 100, replace = TRUE) == "M")/100

#(b) The probability of drawing a vowel.
#The probability of drawing a vowel is 1/3 because the only vowel in my first name is A.
sum(sample(myName, 100, replace = TRUE) == "A")/100

#(c) The probability of draeing a 't