require 'geolocater'
require 'mandrill'

# record = Geolocater.geolocate_ip("38.122.23.194")

# puts record

def mail_to(name, email)
    # MANDRILL EXAMPLE
    puts "ENTERING MANDRILL SECTION"
    m = Mandrill::API.new
    

    message = {
       :subject=> "Hello from the Mandrill API",
       :from_name=> "Jon",
       :text=>"Hi #{name}, how are you?",
       :to=>[{:email=> email, :name=> name}],
       :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",
       :from_email=> "jon@nycda.com"
   }
   puts "SENDING MAIL"
   sending = m.messages.send message
   puts sending

   puts "PROCESS COMPLETE"
   ask
end
def ask
    puts "What is your name?"
    name = gets.chomp
    puts "What is your email?"
    email = gets.chomp
    mail_to(name, email)
end

ask

