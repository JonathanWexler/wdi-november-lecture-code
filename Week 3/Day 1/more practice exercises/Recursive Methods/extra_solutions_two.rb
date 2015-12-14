# Jon Wexler
# WDI PA 2015
# Recursive Exercises


# Take in a number and keep calling the same function with a decremented number
def not_13(num)
    unless num <=0
        if num < 13
         puts "#{num} is less than 13"
     end 
     if num%13 == 0
         puts "#{num} is multiple of 13"
     end 
     not_13(num-=1)
 end 
end


# print a single character of the text in reverse until there is nothing left
def reverse_racecar(text)
    if text.length <= 0
        ""
    else     
        print reverse_racecar(text[1...text.length])
        print text[0]     
    end
end

# pass a number and counter
# recursively call function with incremented counter and newly calculated number
# finish if number %18 is 0 or 8700 steps exceeded (max stack memory)
def recursive_22(num, counter)
    puts "current number is: #{num}"
    if num%18 == 0
        puts "#{counter} steps"
    elsif counter >= 8700
        puts "TOO MANY STEPS"

    else
        if num%2 == 0
            recursive_22(num*3, counter+=1)
        else 
            recursive_22(num/2, counter+=1)
        end      
    end
end


not_13(100)
reverse_racecar("my racecar")
recursive_22(1433, 0)
