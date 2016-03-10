class Array
    def miss_me
        last_item = self.last
        first_letter = self.first.split("").first
        main_arr = []
        if last_item.split("").length > 1
            count = last_item.split("").length
            for i in 1..count
                if i == 1
                    last_letter = last_item.split("").first
                    compared_arr = (first_letter..'z').map {|x| x * i}
                    main_arr << (compared_arr - self)
                elsif i == count
                    last_letter = last_item.split("").first
                    compared_arr = ('a'..last_letter).map {|x| x * i}
                    main_arr << (compared_arr - self)
                else
                    last_letter = last_item.split("").first
                    compared_arr = ('a'..'z').map {|x| x * i}
                    main_arr << (compared_arr - self)
                end
            end
            main_arr.flatten!
        else
            ('a'..last_item).to_a - self
        end
    end
end