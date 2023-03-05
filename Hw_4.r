#Max Casteel
#Homework 4 R-Code
#3/5/2023

#------------------------------------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------------------------------
#Alice, Bob, and Cecilia are playing a game where they take turns rolling a 6-sided die until a winning
#roll is achieved. Alice wins if she gets a 1 or a 2, Bob wins if he rolls a 1, 2, or 3, and Cecilia wins if
#she gets a 1, 2, 3, or 4. Alice will go first, Bob second, and Cecilia third.

#Let X = the total number of rolls required until someone wins.  Find P(X = 4).

 #-------------------------------------------------------------------------------------------------------------------------------------------------------
 #-------------------------------------------------------------------------------------------------------------------------------------------------------
 #3c
 #A sample of 2 items is selected at random without replacement from a box containing 10 items of which 3 are defective.  
 #Let X = the number of defective items in the sample.
 #The pmf is as follows:
 #P(X = 0) = (nchoose(3,0) * nchoose(7,2) / nchoose(10,2)) == 21/45,
 #P(X = 1) = (nchoose(3,1) * nchoose(7,1) / nchoose(10,2)) == 21/45,
 #P(X = 2) = (nchoose(3,2) * nchoose(7,0) / nchoose(10,2)) == 3/45.
 #The expected value is as follows: E(X) = 0 * P(X = 0) + 1 * P(X = 1) + 2 * P(X = 2) == 0 * 21/45 + 1 * 21/45 + 2 * 3/45 == 0.6.
 #The ezxpected value in this instance represents the average number of defective items that will be found in a sample of 2 items.
