# Jon Wexler
# WDI PA 2015
# String Manipulation Exercise Solutions

# Pass no parameters to this method
# take the text "second"
# split the text into two substrings as you would an array or using scan /.../ to split
# every three characters (split actually won't work well here)
def split_second
    text = "second"
    [text[0..2], text[3..-1]]

    # option 2
    # text.scan(/.../)
end

# pass text into this method and using gsub, we replace the word "america" with racecar
# we use String#reverse to reverse the text and return it
# notice how racecar reversed is still "racecar"
def recursive_racecar(text)
    text.gsub!("america", "racecar")
    text.reverse!  
end


# Frankenstein will take two Strings and mash them together with a for loop
# We set length = to the shorter of the two String lengths
# We "chop" off the last letter of the resulting text
# Lastly, we add "brain" so our text creation comes to life
def frankenstein(text_1, text_2)
    new_text = ""

    # ternary operator to set length to shortest string length
    length = (text_1.length > text_2.length) ? text_2.length : text_1.length

    # for loop from 0-length of shortest string 'exclusive'
    for i in 0...length
        new_text << text_1[i] + text_2[i]
    end
    new_text.chop!

    # insert brain at the end of the text
    new_text << "brain"
end

# Function Calls:

puts "Split Second in half: "
puts split_second

puts "Reverse my text with RaceCar: "
puts recursive_racecar("america is the greatest, and america will rise to victory!")

puts "Jumble my text together an give the result a brain: "
puts frankenstein("Hello", "world")