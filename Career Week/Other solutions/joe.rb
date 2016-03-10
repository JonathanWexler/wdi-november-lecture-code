# Given an array of letters in the alphabet in order, find which 
# letters are missing through the last letter in the array
# E.G.
# ['a','b','c','f','g','h','j','m','p','s','t','u','v','aa','cc','ee'].miss_me =>
# ['d','e','i','k','l','n','o','q','r','w','x','y','z','bb','dd']  

class Array
    def miss_me(array)
        # determine legth of the last element
        #
        maxchars = array[-1].length
        # generate an array of alphabet match hashes keyed to length of our strings
        #   so alphabets = {
        #           1 => ['a','b','c', ... 'z'],
        #           2 => ['aa', 'bb', 'cc', ... 'zz'],
        #           3 => ['aaa', 'bbb', 'ccc', ... 'zzz'],
        #           "..."
        #           n => [a * maxchars, b*maxchars....."
        #       }
        alphabet = "abcdefghijklmnopqrstuvwxyz"
        alpHash = {}
        for i in (0...maxchars)
            alphArray = []
            alphabet.each_char {|c|
                alphstr = ""
                for j in (0..i)
                    alphstr << c
                end
                alphArray << alphstr
            }
            alpHash[i] = alphArray
        end
        # puts alpHash
        # now that we have all the compare strings we need, we can 
        # compare our given strings against the compare strings
        missingLetters = []
        alpHash.each do |k,v|
            # puts "checking #{k}"
            v.each do |c|
                if !array.include? c 
                    missingLetters << c
                end
            end
        end
        return missingLetters
    end
end
letters = ['a','b','c','f','g','h','j','m','p','s','t','u','v','aa','cc','ee']
missing = letters.miss_me(letters)
puts missing.length 
puts missing