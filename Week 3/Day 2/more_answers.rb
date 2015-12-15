# 1) Loop through an array of strings, print the first letter of each word *(use an Each loop)

a = ["Hello", "there", "everyone", "this", "pasta", "code", "ends", "here"]
def first_letter(a)
    a.each do |word|
        if word.length >0
            puts word.first
        end
    end
end

first_letter(a)

# 2) Loop through an array of numbers, and sum the numbers together, print the final sum at the end of the loop (use the While loop)
n = [3,5,4,7,56,43,54,23,87,56,2,1]
counter = 0
sum = 0
while counter < n.length

    sum = sum + n[counter]
    counter += 1
end
puts sum


# 3) Loop from 1 to 1000 (inclusive), and print out multiples of 100, and for every multiple of 250 print "$250" (use a normal for loop)

for i in 1..1000
    if  i%250 == 0
        puts "$250"
    elsif i%100 == 0
        puts i
    end
end

# 4) nest a while loop within a for loop. Use the first array of strings (in exercise 1), after looping through each word in the array, use the while loop to loop through each character in that word and print the 3rd character


for j in 0...a.length
    counter = 0
    if a[j].length >= 3
        while counter<3

            if counter == 2
                puts a[j][counter]
            end
            counter +=1
        end
    end
end


# 5) Loop through a paragraph, analyze each item in that paragraph. If you reach a word, reverse the word and put it back in its place, if yo reach an integer, replace it with the text version (e.g. 3 becomes 'three'). Output the text at the end.