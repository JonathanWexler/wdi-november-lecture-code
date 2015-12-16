

# def recursive_method(x)
#     return 0 if x%8 == 0
#     puts x
#     return recursive_method(x/2)
#     return recursive_method(x*2)
# end


# recursive_method(3007)



# def multiples(x,y)
#     if x%2 == 0
#         puts "x even"
#         multiples(x/3,y)
#     elsif y%2 ==0
#         puts "y even"
#         multiples(x, y/3)
#     else
#         puts "neither even"
#         return 0
#     end
# end



# multiples(7,12)
# passes 12 to the recursive_method


# def pick_path(x)

#     if x%2 == 0
#         puts "you chose the even path, pick again"
#         y = gets
#         pick_path(y)
#     elsif x%3 ==0
#         puts "you picked the threes path, pick again"
#         y = gets
#         pick_path(y)
#     else
#         puts "you chose poorly"
#         return x
#     end
# end

# pick_path 4


# def choose(x)
#     # convert x to an integer if it isn't already
#     x = x.to_i
#     return 0 if x%13 == 0
#     puts "choose again"
#     choose(gets.chomp)

# end

# choose 3


def loop_sub(x)
    return x if x<=0
    puts x
    loop_sub(x-1)
end
loop_sub 100

# 