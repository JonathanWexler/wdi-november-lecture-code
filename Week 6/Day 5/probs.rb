# Given an array that holds 50,000 numbers
# write a method that accepts an array of integers to sort those numbers without any ruby sorting methods
require 'benchmark'
a = []
5000.times do |i|
    a.push(i)
end
a.shuffle!

def sort_me x
# for i in 0..x.length-1
    (0..x.length-1).each do |i|
        (0..x.length-2).each do |j|
        if x[j] > x[j+1]
            swap = x[j]
            x[j] = x[j+1]
            x[j+1] = swap
        end
    end
end
return x
end

def bubble_sort(array)
 n = array.length
 loop do
   swapped = false

   (n-1).times do |i|
     if array[i] > array[i+1]
       array[i], array[i+1] = array[i+1], array[i]
       swapped = true
     end
   end

   break if not swapped
 end

 array
end


Benchmark.bm do |x|
  x.report("Team FLARF") { sort_me a }
  x.report("Team MAD Scientists") {bubble_sort a }  
end

