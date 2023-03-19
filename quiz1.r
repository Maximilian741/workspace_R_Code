#Max Casteel 
#R Code


#1
#For a group of 50 people, assume that each person is equally likely to have a bithday on a particular day
#of the year.
#In R, simulate the birth of 100 people according to the setup in problem 1. Calculate the following
#quantities, in R, from your simulated births. 

#1a)The number of people born on January 5th.
people <- 50
days <- 365
people_born_on_january_5th <- 0
for(i in 1:100){
    people_born_on_january_5th <- people_born_on_january_5th + sum(sample(1:days, people, replace = TRUE) == 5)
}
people_born_on_january_5th/100

#1b) The number of days of the year where 3 people were born
days_where_3_people_were_born <- 0
for(i in 1:100){
    days_where_3_people_were_born <- days_where_3_people_were_born + sum(table(sample(1:days, people, replace = TRUE)) == 3)
}
days_where_3_people_were_born/100

#1c) Repeat the simulation 10,000 times an obtain an estimate of the expected number of days in the year
#where 2 or 3 people were born.
days_where_2_or_3_people_were_born <- 0
for(i in 1:10000){
    days_where_2_or_3_people_were_born <- days_where_2_or_3_people_were_born + sum(table(sample(1:days, people, replace = TRUE)) >= 2)
}
days_where_2_or_3_people_were_born/10000
