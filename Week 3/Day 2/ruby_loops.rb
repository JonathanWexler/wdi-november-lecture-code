# Ruby Loops

# to loop from 0 to a specified number we use the range
# 0..10 will go from 0 through 9 (0,1,2,3,4,5,6,7,8,9)
# the syntax for the for loop:
for g in 0..10
# has the loop going through 0 to 9, and each time 
# the loop goes through a 'round' g takes on a new value
# g starts at 0 and increments by one (automatically) until the specified limit in the loop (10, here)
end

# To make this loop more interesting, we can utilize the variable 'g' to print some numbers:
for g in 0..10
    puts g
end
# This loop above will print a number each iteration of the loop, whatever value g takes on
# Since g starts at 0 and increments by one until 10, we will print out 0, 1, 2, 3, 4, 5, 6, 7, 8, 9

# if we have a defined array:
array = ["hello", "there", "how", "are", "you?"]
# we can use a loop to print out values of the array

for f in 0...array.length
    puts array[f]
end
# here instead of just printing numbers, we normally would just say 'puts f' to do that
# instead we are printing elements from the array, using f
# since f takes on the value 0, 1, 2, 3, 4, as it is used through the loop, we can use it to pull the strings from the array. i.e. array[0], array[1], array[2], array[3], array[4]

 # Lastly, we may not want to use the variable in the for loop at all
 num_array = [3,5,7,8,3,5]
 sum = 0
 num_array.each do |number|
    sum = sum + number
 end 
# here we are setting up a variable, sum, that for now is 0
# as we move through 'each' element of the array (which we call 'number'), take the number and add it to the sum. So by the end of the loop we have all values of the array summed together

# Keep your loop examples simple. Think about what values the variables take on. Don't assume steps are happening (e.g. that x goes from 0 to 10) without actively acknowledging, "Hey! x was 3, and now it is 4." and later "x was 8 and now is 9". Through this method, you may find x never reaches 10 in the loop 0..10, though your first instinct is to assume x eventually takes on the value of 10.

# Try to create some more 'simple' for, each, and while loops. and with a pen and paper, write the values you expect to get and the output of each iteration of the loop you expect to see using an array with 3-4 elements as an example. 
