require 'benchmark'

def fibonacci (number)
    # if number is 0 or 1
    return number if  number == 1 || number == 0

    # returning the previous number added to the number two spots ago
    return fibonacci(number-1) + fibonacci(number-2)

end

Benchmark.bm do |x|
  x.report { puts fibonacci 10}
  x.report { puts fibonacci 15}
  x.report { puts fibonacci 60 }
end

# 0  1  2  3  4  5  6  7    8   9   10 ....
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55 ....
# a = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
# a[10]