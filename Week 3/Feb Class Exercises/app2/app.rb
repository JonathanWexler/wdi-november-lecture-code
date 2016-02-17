require 'sinatra'

get '/' do 
    erb :home
end

get '/login' do 
    erb :login
end

post '/login' do 
    puts "PARAMS ARE #{params.inspect}"
    @real_password = "12345"
    @real_uname = "jon"
    if params["uname"] == real_uname
        if params["password"] == real_password
            return "SUCCESS"
        end
        "Password is incorrect. Please go back."
    else
        return ":( No User information found!"
    end

end

get '/about_us' do 
    # puts "THESE ARE MY PARAMS"
    # puts params.inspect
    puts "MY NAME IS #{params["name"]}"
    @name = params["name"]
    @city = params["city"]
    erb :about
end

get '/oggi' do 

    "Oggi is awesome!"
end