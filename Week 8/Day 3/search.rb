a = [1,2,4,7,23,45,46,48,53,59,98,99,105,109,123,143,432,645,756,766,877]
x = [1,3,4]
def search (the_array, number_to_find)

    starting = -1
    ending = the_array.length
    middle = (ending+starting)/2
# puts ending
    while starting+1 != ending
        puts "Starting at: #{starting} Ending at: #{ending}"
        if the_array[middle] > number_to_find
            ending = middle
        elsif the_array[middle] < number_to_find
            starting = middle
        else
            return true
        end       
        middle = (ending+starting)/2
    end  

    return false
end

puts search(a, 41)

# O(n)
def richard_find_number(n, number_to_find)
    n.index{ |x| x == number_to_find}
end

# puts find_number(a, 7)

# O(lg n)
def b_find_number(n, number_to_find)
    n.bsearch {|x| puts x }
end

# puts richard_find_number(a, 7)
# puts b_find_number(a, 7)

