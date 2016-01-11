class Computer < ActiveRecord::Base
    TYPES = ["working", "barely working", "hard drive failure", "battery issues", "dead"]

    scope :find_me_cpus, -> {
        all
    }    

    scope :lap_types, -> {
        where(c_type: "laptop")
    }    

    scope :lap_and_mac_battery, -> {
        where(c_type: "laptop", model: "macbook pro", condition: 3)
    }

    def show_me_its_condition
        TYPES[self.condition]
    end

    def change_condition
        self.condition += 1
        if self.condition >= TYPES.length || self.condition == 1
            self.condition = 0
        end
        
    end

    def back_to_working_state
        
    end
end
