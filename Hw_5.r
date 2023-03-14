#Max Casteel
#Homework 5

#1
outer_counter <- 0
inner_counter <- 0
less_than_12_counter <- 0
more_than_12_counter <- 0
general_counter <- 0

die_poisiton <- c(1,2,3,4,5,6)
inner_loop_number_from_die_position <- sample(die_poisiton, 1, replace = TRUE)

for(i in 1:10000){
    inner_loop_number_from_die_position <- sample(die_poisiton, 1, replace = TRUE)
    for(j in 1:inner_loop_number_from_die_position){
        general_counter <- general_counter + j
    }
}