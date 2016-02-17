# A class defined as Hotel
class Hotel
    # Attributes for a hotel, name and location
    attr_accessor :name, :location, :num_rooms, :pool, :gym

    # method that is called when you create a new instance, sets values
    def initialize(h_name, h_location)
        @name = h_name
        @location = h_location
    end
end

# building codes, lobby, max_floor