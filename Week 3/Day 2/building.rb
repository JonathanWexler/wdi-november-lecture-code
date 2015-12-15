class Building
attr_accessor :windows, :entrance, :material

def enter
    "Welcome!" 
end

end


class Store < Building
    attr_accessor :parking_lot, :bathroom

    def purchase
        "thank you, come again"
    end
end

class Dwelling < Building
    attr_accessor :beds

    def sleep
        puts "sleeping in one of the #{@beds} beds"
    end

end

class Home < Dwelling
    attr_accessor :address

    def initialize(beds=1)
        @beds = beds
    end

    def sleep
        super
        puts "have a good night in your home"
    end


end


