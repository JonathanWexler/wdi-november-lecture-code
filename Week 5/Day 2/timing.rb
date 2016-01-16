require 'benchmark'

n = 100000
RANGE = (0..100)
h ={}
a = []

def does_range_include?(data)
    RANGE.each do |i| 
        data.member? i
    end
end

Benchmark.bm do |x|
  x.report { n.times do |x| h[x] = x end}
  x.report { n.times do |x| a.push(x) end}  
  # x.report { n.times do |x| 45 + h[x] end}  
  # x.report { n.times do |x| 45 + a[x] end}  

  x.report { n.times do |x| does_range_include? h end}
  x.report { n.times do |x| does_range_include? a end}
end

puts a.count




# Benchmark.bm do |x|
#   x.report { 1000000.times do |x| "HeLLO".downcase end}
# end



