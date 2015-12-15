class Zoo
    attr_accessor :exhibits 

    def initialize
        @exhibits = []
    end
end

class Animal
    attr_accessor :legs

end

# a = Animal.new
# z = Zoo.new
# z.exhibits.add(a)