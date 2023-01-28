#Maximilian Casteel
#Howmework 1

#Problem 1

myNameV2 <- c("M","A", "X", "I", "M", "I", "L", "I", "A", "N")
#The probability of the first letter being an "M" is 2/10 in theory, if we assume that MM and MM are the same. Using myNameV2   
sum(sample(myNameV2, 1000, replace = TRUE) == "M")/1000

myNameV3 <- c("MM", "A", "X", "I", "M", "I", "L", "I", "A", "N")
#The probability of the first letter being an "MM" is 1/10 in theory, if we assume that MM and M are different.  Using myNameV3.
sum(sample(myNameV3, 1000, replace = TRUE) == "MM")/1000

myNameV2 <- c("M","A", "X", "I", "M", "I", "L", "I", "A", "N")
#The probability of drawing a vowel is 5/10 in theory.
sum(sample(myNameV2, 1000, replace = TRUE) == "A" | sample(myNameV2, 1000, replace = TRUE) == "I" | sample(myNameV2, 1000, replace = TRUE) == "E" | sample(myNameV2, 1000, replace = TRUE) == "O" | sample(myNameV2, 1000, replace = TRUE) == "U")/1000

myNameV2 <- c("M","A", "X", "I", "M", "I", "L", "I", "A", "N")
#The probability of drawing a 't' is 0 in theory.
sum(sample(myNameV2, 1000, replace = TRUE) == "t")/1000

myNameV2 <- c("M","A", "X", "I", "M", "I", "L", "I", "A", "N")
#The probability of drawing a vowel or a 't' is 4/10 in theory.
sum(sample(myNameV2, 1000, replace = TRUE) == "A" | sample(myNameV2, 1000, replace = TRUE) == "I" | sample(myNameV2, 1000, replace = TRUE) == "E" | sample(myNameV2, 1000, replace = TRUE) == "O" | sample(myNameV2, 1000, replace = TRUE) == "U" | sample(myNameV2, 1000, replace = TRUE) == "t")/1000

#EXTRA CREDIT
sum(sample(1:6, 1000, replace = TRUE) + sample(1:6, 1000, replace = TRUE) + sample(1:6, 1000, replace = TRUE) == 14)/1000