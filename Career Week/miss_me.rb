# Given an array of letters in the alphabet in order, find which letters are missing through the last letter in the array
# E.G.
# ['a','b','c','f','g','h','j','m','p','s','t','u','v','aa','cc','ee'].miss_me => ['d','e','i','k','l','n','o','q','r','w','x','y','z','bb','dd']

class Array
    def miss_me
        new_one = []
        current = self.first.ord
        self.each{ |x|
            length = x.length
            if x.ord > current
                unless x.ord == current + 1
                    new_one.push(push_it( current+1, x.ord, length))
                    # new_one.push(push_it_real_good( (current+1...x.ord).to_a, length))
                end
            elsif x.ord < current
                new_one.push(push_it( current+1, 123, length-1))
                new_one.push(push_it( 97, x.ord, length)).flatten!
            end
            current = x.ord
        }
        new_one
    end

    def missed
        ['d','e','i','k','l','n','o','q','r','w','x','y','z','bb','dd']
    end

    def push_it(start_v, end_v, length )
        ar = []
        for i in start_v...end_v
            ar.push (i).chr*length
        end
        ar
    end

    def push_it_real_good(a, length)
        a.each.map{ |x| x.chr*length }
    end
end