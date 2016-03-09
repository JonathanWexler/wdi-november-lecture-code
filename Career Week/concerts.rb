# You are building an app to track concerts. You pull data into your app via an api, but the data is received as a line of text:
# e.g.
# Bob Dylan:Mann Music Center, 7/13/16 at 7:30PM &
# The list comes in at a random order. Your task is to build two functions (though more are modularity is encouraged) that receive a list and either an artist or a venue to return all concerts related to that information.


def concert_by_artist(list, artist)

end

def concert_by(list, venue)
    h = hash_me list
    h[venue.downcase]
end

def hash_me (list)
    l = list.split('&')
    h = {}
    l.each do |c|
        c= c.strip
        a = c.split(':')
        puts date = a[1].split(',')[1].split()[0]
        date = a[1].split(',')[1].split()[0].split('/')

        if Time.new("20#{date[2]}", date[0], date[1]) > Time.new
            # puts c
            n = a[0].downcase
            if h[n]
                h[n].push c
            else
                h[n] = [c]
            end
            v = a[1].split(',')[0].downcase
            if h[v]
                h[v].push c
            else
                h[v] = [c]
            end
        end
    end
    h
end

list = "Bruce Springsteen:Wells Fargo Center, 2/12/16 at 7:30PM & Flight of the conchords:Mann Music Center, 6/12/16 at 7:30PM & G. Love and Special Sauce:Fillmore, 3/26/16 at 7:30PM & Paul Simon:Mann Music Center, 6/25/16 at 7:30PM & B.O.B.:Fillmore, 6/10/16 at 7:30PM & Father:Fillmore, 4/25/16 at 7:30PM & Bob Dylan:Starlight Theatre, 6/21/16 at 7:30PM & Thrice:Fillmore, 6/17/16 at 7:30PM & Phish:Mann Music Center, 6/29/16 at 7:30PM & Bob Dylan:Wolf Trap, 7/6/16 at 7:30PM & Bob Dylan:Mann Music Center, 7/13/16 at 7:30PM & Guster:Fillmore, 6/16/16 at 7:30PM & Paul Simon:Fox Theatre, 5/3/16 at 7:30PM & B.O.B.:Readyroom, 4/29/16 at 7:30PM"









puts concert_by(list, "bruce Springsteen")
# puts concert_by_venue(list, "Bob dylan")
# puts concert_by_venue(list, "guster")