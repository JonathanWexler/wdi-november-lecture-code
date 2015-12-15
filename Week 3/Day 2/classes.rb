# classes.rb

# DOG
class Dog
    def initialize (name, friendly)
        @name = name
        @friendly = friendly
    end
end

# PHONE
class Phone
    def initialize
        @make ="apple"
        @serial = rand
        puts @make
        puts @serial
    end
end

# PERSON
class Person
    def initialize
        @age = rand*100
        @first_name = ""
        @last_name = ""
    end

    def full_name
        @first_name + " " + @last_name
    end

    def self.carbon?
        true
    end

    def self.population
        7300000000
    end
end

# SUPERHERO
class SuperHero
    def initialize(name="Jeff", cape=false)
        @name=name
        @cape =cape
    end

    def save_us
        if @cape
            puts "he flies, and cape swirls"
        end
        puts "#{@name} saves the day!"
    end

    def self.what_to_do_with_great_power
        "you have great responsibility"
    end
end
