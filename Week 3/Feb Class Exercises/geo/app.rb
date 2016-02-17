require 'geolocater'
  
record = Geolocater.geolocate_ip("38.122.22.202")
puts record
# puts record.inspect
# puts record.nil?