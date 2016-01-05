require 'sinatra'
require 'wobbles'

get '/' do 
    erb :home
end

get '/jon' do 
    "Hello Jon"
end

get '/about' do
    erb :about
end

get '/contact_us' do
    erb :contact
end

w = Wobble.new