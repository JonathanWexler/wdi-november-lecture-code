# Create a User class with 3 virtual attributes (email, name, and id) write a
# method that accepts an array of hashes {email: "jon@nycda.com", name: "Jon",
# id: 453} and uses that information to generate users
require 'benchmark'
a = []
1000000.times do |i|
    a.push({email: "Jon@nycda.com", name: "Jon", id: i })
end


class Flarf 
    def initialize attr_hash
        @email = attr_hash[:email]
        @name = attr_hash[:name]
        @id = attr_hash[:id]
    end
end

def make_users arr
    arr.map do |e|
        Flarf.new(e)
    end    
end



class User
    attr_accessor :name, :email, :id
    def initialize attr_hash
        @email = attr_hash[:email]
        @name = attr_hash[:name]
        @id = attr_hash[:id]
    end
    def self.save_me c
        new_users = []
        c.each do |user|
            @new_user = User.new(name: user[:name], email: user[:email], id: user[:id])
            new_users << @new_user
        end
        new_users
    end
end












Benchmark.bm do |x|
  x.report("Team FLARF") { make_users a }
  x.report("Team MAD Scientists") { User.save_me a }  
end