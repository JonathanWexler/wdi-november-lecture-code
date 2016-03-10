 # Given an array of letters in the alphabet in order, find which letters are missing through the last letter in the array
# E.G.
# ['a','b','c','f','g','h','j','m','p','s','t','u','v','aa','cc','ee'].miss_me => ['d','e','i','k','l','n','o','q','r','w','x','y','z','bb','dd']  
class Array
    def miss_me 
        # setting up test variables
        key = 'abcdefghijklmnopqrstuvwxyz'
        missing_letter_count = 0
        found=0
        missing_letters = []
        i=0
        # main testing loop
        while i < missing_letter_count + self.length
            # determine next letter to test against array
            test_letter = key[i%26] * (i/26 + 1)
            # print statement to help debug
            # puts test_letter.to_s + " against " + self[i].to_s
            if self[i - missing_letter_count] != test_letter
                # puts "MISSING!"
                if found > 0    
                    missing_letters << test_letter
                end
                missing_letter_count +=1
            else
                found +=1
            end
            i += 1
        end
        missing_letters
    end
end
# ['d','e','i','k','l','n','o','q','r','w','x','y','z','bb','dd']  
# puts ['a','b','c','f','g','h','j','m','p','s','t','u','v','aa','cc','ee'].miss_me
# puts ['aa','bbb'].miss_me