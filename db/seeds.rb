# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Transaction.destroy_all
Trip.destroy_all
Stop.destroy_all
# Line.destroy_all
Edge.destroy_all

u1 = User.create :name => "Joshua McDonald", :email => 'josh@gmail.com', :balance => 50, :password => 'chicken', :admin => true
u2 = User.create :name => "Aleks", :email => 'aleks@ga.co', :balance => 4, :password => 'chicken', :admin => true
u3 = User.create :name => "John", :email => 'john@yahoo.com', :balance => 12, :password => 'chicken', :admin => false
u4 = User.create :name => "James", :email => 'james@ga.co', :balance => 4, :password => 'chicken', :admin => false
u5 = User.create :name => "Tracy", :email => 'tracygirl66@gmail.com', :balance => 6, :password => 'chicken', :admin => false
u6 = User.create :name => "Kate", :email => 'kate@microsoft.com', :balance => 8, :password => 'chicken', :admin => false
puts "#{ User.count } users"

ts1 = Transaction.create :user => u1, :amount => 10 
ts2 = Transaction.create :user => u2,:amount => 15 
ts3 = Transaction.create :user => u3,:amount => 20 
ts4 = Transaction.create :user => u4,:amount => 20 
ts5 = Transaction.create :user => u5,:amount => 50 
puts "#{ Transaction.count } Transactions"

# blueLine = Line.create :name => "Blue Line", :color => "blue"
# redLine = Line.create :name => "Red Line", :color => "red"
# greenLine = Line.create :name => "Green Line", :color => "green"
# puts "#{ Line.count } Lines"

stopSunshine = Stop.create :name => "Sunshine City", :operational => true, :location_x =>3 , :location_y =>2 
stopPokemon = Stop.create :name => "Pokemon Centre", :operational => true, :location_x => 13, :location_y =>2 
stopIkebukuro = Stop.create :name => "Ikebukuro", :operational => true, :location_x => 4, :location_y =>7 
stopUeno = Stop.create :name => "Ueno", :operational => true, :location_x => 9, :location_y =>6 
stopShimbashi = Stop.create :name => "Shimbashi", :operational => true, :location_x => 12, :location_y => 11
stopIdabashi = Stop.create :name => "Idabashi", :operational => true, :location_x => 7, :location_y => 11 
stopShinjuku = Stop.create :name => "Shinjuku", :operational => true, :location_x => 2, :location_y => 11
stopShibuya = Stop.create :name => "Shibuya", :operational => true, :location_x => 5, :location_y => 16
stopRoppongi = Stop.create :name => "Roppongi", :operational => true, :location_x => 10, :location_y => 16
stopRamen = Stop.create :name => "Ramen Museum", :operational => true, :location_x => 2, :location_y => 21
stopOdaiba = Stop.create :name => "Odaiba", :operational => true, :location_x => 13, :location_y => 20

stopUseless = Stop.create :name => "Useless", :operational => true, :location_x => 15, :location_y => 19
puts "#{ Stop.count } Stops"

tr1 = Trip.create :user => u1, :start_id => stopSunshine.id, :end_id => stopIdabashi.id, :date => "2020-05-3"
tr2 = Trip.create :user => u2, :start_id => stopIdabashi.id, :end_id => stopShinjuku.id, :date => "2020-05-5"
tr3 = Trip.create :user => u2, :start_id => stopRamen.id, :end_id => stopOdaiba.id, :date => "2020-04-7"
tr4 = Trip.create :user => u3, :start_id => stopIkebukuro.id, :end_id =>stopUeno.id, :date => "2020-05-23"
tr5 = Trip.create :user => u4, :start_id => stopOdaiba.id, :end_id => stopShinjuku.id, :date => "2020-05-15"
tr6 = Trip.create :user => u5, :start_id => stopRoppongi.id, :end_id => stopIdabashi.id, :date => "2020-05-29"
puts "#{ Trip.count } Trips"


# # Associations #################################################################
# blueLine.stops << stopRamen << stopRoppongi << stopShimbashi << stopUeno << stopPokemon
# redLine.stops << stopShibuya << stopRoppongi << stopShimbashi << stopUeno << stopIkebukuro << stopShinjuku
# greenLine.stops << stopSunshine << stopIkebukuro << stopIkebukuro << stopRoppongi << stopOdaiba 

# edges # 
Edge.create :from_id => stopSunshine.id, :to_id =>  stopIkebukuro.id
Edge.create :to_id => stopSunshine.id, :from_id =>  stopIkebukuro.id

Edge.create :from_id => stopUeno.id, :to_id => stopIkebukuro.id
Edge.create :to_id => stopUeno.id, :from_id => stopIkebukuro.id

Edge.create :from_id => stopPokemon.id, :to_id => stopUeno.id
Edge.create :to_id => stopPokemon.id, :from_id => stopUeno.id

Edge.create :from_id => stopShimbashi.id, :to_id => stopUeno.id
Edge.create :to_id => stopShimbashi.id, :from_id => stopUeno.id

Edge.create :from_id => stopRoppongi.id, :to_id => stopShimbashi.id
Edge.create :to_id => stopRoppongi.id, :from_id => stopShimbashi.id

Edge.create :from_id => stopOdaiba.id, :to_id => stopRoppongi.id
Edge.create :to_id => stopOdaiba.id, :from_id => stopRoppongi.id

Edge.create :from_id => stopRoppongi.id, :to_id => stopRamen.id
Edge.create :to_id => stopRoppongi.id, :from_id => stopRamen.id

Edge.create :from_id => stopShibuya.id, :to_id => stopRoppongi.id
Edge.create :to_id => stopShibuya.id, :from_id => stopRoppongi.id

Edge.create :from_id => stopShinjuku.id, :to_id => stopShibuya.id
Edge.create :to_id => stopShinjuku.id, :from_id => stopShibuya.id

Edge.create :from_id => stopIkebukuro.id, :to_id => stopShinjuku.id
Edge.create :to_id => stopIkebukuro.id, :from_id => stopShinjuku.id

Edge.create :from_id => stopIdabashi.id, :to_id => stopIkebukuro.id
Edge.create :to_id => stopIdabashi.id, :from_id => stopIkebukuro.id

Edge.create :from_id => stopRoppongi.id, :to_id => stopIdabashi.id
Edge.create :to_id => stopRoppongi.id, :from_id => stopIdabashi.id

Edge.create :from_id => stopUseless.id, :to_id => stopIdabashi.id
Edge.create :to_id => stopUseless.id, :from_id => stopIdabashi.id

puts "#{ Edge.count } Edges"
