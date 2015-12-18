
require 'sendgrid-ruby'

name = "Jon"
email="jon@nycda.com"


# As a hash
client = SendGrid::Client.new(api_user: ENV['SENDGRID_USERNAME'], api_key: ENV['SENDGRID_PASSWORD'])

# Or as a block
client = SendGrid::Client.new do |c|
  c.api_user = ENV['SENDGRID_USERNAME']
  c.api_key = ENV['SENDGRID_PASSWORD']
end

# or as a block with the API key only #
client = SendGrid::Client.new do |c|
  c.api_key = ENV['SENDGRID_API_KEY']
end


mail = SendGrid::Mail.new do |m|
  m.to = 'jon@nycda.com'
  m.from = 'jon@nycda.com'
  m.subject = 'Hello world!'
  m.text = 'I heard you like pineapple.'
end

res = client.send(mail)
puts res.code
puts res.body
# 200
# {"message"=>"success"}