require 'sinatra'
require 'mail'
require 'net/smtp'

# params = {:name => "jon", :password => 12345}

get '/' do 
 "Hello World"

end

get '/home' do
    puts "*******************"

    puts params[:name]
    @user_name = params[:name]
    # puts params[:password]
    erb :home

end

post '/sign-in' do 
    puts "INFORMATION WAS POSTED"
    @password = params[:password]
    @username = params[:username]
    erb :signed
end

# if someone loads their webpage to request '/' do the following

# load the erb file called home

# end