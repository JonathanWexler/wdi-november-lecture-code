class Wobble
    attr_accessor :name, :speed
    def initialize (name, speed)
        @name = name
        @speed = speed
    end

    def run
        @speed
    end

    def talk
        if speed == 0
            return "Our Species is dumb"
        elsif speed == 1
            return "We are here to serve you, Master" 
        else
            return "Ummmmmmm...."
        end
    end
end


def intro
    bubble = []
    puts "Help the Wobbles Home!"
    puts "Name the Wobbles..."

    for i in 0...3
        puts "Name Wobble #{i+1}"
        n = gets.chomp
        puts "How fast does #{n} run? (0,1,2)"
        s = gets.chomp.to_i
        w = Wobble.new(n , s)
        bubble.push w

    end
    play_game bubble
end


def play_game bubble
    return puts "All Wobbles Are Dead!" if bubble.length == 0

    puts "You must jump the canal! Who will jump?"
    for i in 0...bubble.length
        puts "#{i+1}) #{bubble[i].name}"
    end

    choice = bubble[gets.chomp.to_i-1]
    if choice.speed < 2
        puts "#{choice.name} wasn't fast enough"
        bubble.delete(choice)
        play_game bubble
        return
    end

    puts "Please the lord GuftPuft! Who will speak?"
    for i in 0...bubble.length
        puts "#{i+1}) #{bubble[i].name}"
    end
    choice = bubble[gets.chomp.to_i-1]
    puts "#{choice.name} says"
    puts choice.talk
    unless choice.speed == 1
        puts "#{choice.name} wasn't pleasing"
        bubble.delete(choice)
        play_game bubble
        return
    end

    puts "YOU WIN!"
    
end

intro