# loop from 0 to 10, print even numbers

# for hello in 0..10
#     if hello%2 == 0 && hello>0
#         puts hello
#     end
# end

array = ["this", "is", "an", "array"]
cars = ["honda", "toyota", "ford", "gmc"]
puts "for loop:"

for i in 0...array.size
    puts array[i]
end
puts "each loop:"
cars.each do |car|
    puts car
end

# this
# is
# an
# array