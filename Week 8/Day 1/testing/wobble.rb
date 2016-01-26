class Wobble

    attr_accessor :legs, :name

    def initialize(things={})
        @legs = things[:legs]
        @name = things[:name]
    end

    def no_legs?
        return true if @legs == nil || @legs == 0
    end

    def has_name?
        return true if @name != "" && @name 
    end
end