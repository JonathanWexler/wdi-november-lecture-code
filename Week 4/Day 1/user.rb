class User

    attr_accessor :fname, :lname, :email

# In the wdi-november DB, create Table users with columns fname, lname, and email
def initialize(fname="", lname="", email="")
    @fname = fname
    @lname = lname
    @email = email

    puts `psql -d wdi-november -c "INSERT INTO users (fname, lname, email) VALUES ('#{fname}','#{lname}', '#{email}')"`
end


def self.find_the_id(search_id)
    puts `psql -d wdi-november -c "SELECT * FROM users WHERE id = #{search_id}"`
end

def self.where(params_hash={})
    if params_hash[:fname]
        puts `psql -d wdi-november -c "SELECT * FROM users WHERE fname = '#{params_hash[:fname]}'"`
    end

    if params_hash[:shakira]
        puts "Shakira Shakira"
    end

    ({fname: "Jon", lname: "Wexler"})
    puts "in the WHERE method"
end

# 

def self.last
    puts `psql -d wdi-november -c "SELECT * FROM users WHERE fname = '#{search_fname}'"`
end

end