simple = -> { puts "hello There"}
simple.call

simple_var = -> (num) { puts "Number is now #{num += 1}"}
simple_var.call(3)

simple_var_old = lambda do |num|
    puts "Number is now #{num += 1}"
end
simple_var_old.call(3)

simple_two_var = -> (num, product) do
    puts "You are ordering a package of #{product}s"
    puts "You ordered #{num}"
end 
simple_two_var.call(3, "sock")


simple_two_var_braces = -> (array, counter) {
    array.each do |a|
        if a == "There"
            a = "Jeff"
            counter += 1
        end
        puts array.inspect
        puts "There is #{counter} Jeff!"
    end
}
simple_two_var_braces.call(["Hello", "There"], 0)



