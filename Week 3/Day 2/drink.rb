class Drink
    attr_accessor :flavor, :type

    def initialize(taste="apple", form="milk")
        @flavor = taste
        @type = form
    end

    def mix
        @flavor += "alcohol"
    end

    def spill
        puts "aw man, you spilled my drink."
        @flavor =""
        @type =""
    end
end