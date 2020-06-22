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



u1 = User.create :name => "Joshua McDonald", :email => 'jonesy@ga.co', :balance => 10.5, :password => 'chicken'
u2 = User.create :name => "Aleks", :email => 'aleks@ga.co', :balance => 4, :password => 'chicken'
u3 = User.create :name => "John", :email => 'john@yahoo.com', :balance => 12, :password => 'chicken'
u4 = User.create :name => "James", :email => 'james@ga.co', :balance => 4, :password => 'chicken'
u5 = User.create :name => "Tracy", :email => 'tracygirl66@gmail.com', :balance => 6, :password => 'chicken'
u6 = User.create :name => "Kate", :email => 'kate@microsoft.com', :balance => 8, :password => 'chicken'
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
puts "#{ Stop.count } Stops"

tr1 = Trip.create :user => u1, :start => stopIdabashi, :end => stopShibuya
# tr2 = Trip.create :user => u2, :start => stopIdabashi, :end => stopShinjuku
# tr3 = Trip.create :user => u3, :start => stopIkebukuro, :end =>stopUeno
# tr4 = Trip.create :user => u4, :start => stopOdaiba, :end => stopShinjuku
# tr5 = Trip.create :user => u5, :start => stopRoppongi, :end => stopIdabashi
puts "#{ Trip.count } Trips"



# e1 = Edge.create 
# e2 = Edge.create 
# e3 = Edge.create 
# e4 = Edge.create 
# puts "#{ Edge.count } Edges"



# # Associations #################################################################
# blueLine.stops << stopRamen << stopRoppongi << stopShimbashi << stopUeno << stopPokemon
# redLine.stops << stopShibuya << stopRoppongi << stopShimbashi << stopUeno << stopIkebukuro << stopShinjuku
# greenLine.stops << stopSunshine << stopIkebukuro << stopIkebukuro << stopRoppongi << stopOdaiba 

# u1.transaction << ts1 <<ts2 << ts3
# u2.transaction << ts4 << ts5

# u1.trips << tr1 <<tr2 << tr3
# u2.trips << tr4 << tr5

# stopOdaiba.start << tr1 << tr2 
# stopPokemon.start << tr3 << tr4
# stopShimbashi.start << tr5

# stopRamen.end << tr3 << tr2 
# stopRoppongi.end << tr1 << tr5
# stopOdaiba.end << tr4


# # edges # 
# stopSunshine.from <<  stopIkebukuro
# stopSunshine.to <<  stopIkebukuro
# stopIkebukuro.from << stopSunshine
# stopIkebukuro.to << stopSunshine

# stopIkebukuro.from << stopUeno
# stopIkebukuro.to << stopUeno
# stopUeno.from << stopIkebukuro
# stopUeno.to << stopIkebukuro

# stopUeno.from << stopPokemon
# stopUeno.to << stopPokemon
# stopPokemon.from << stopUeno
# stopPokemon.to << stopUeno

# stopUeno.from << stopShimbashi
# stopUeno.to << stopShimbashi
# stopShimbashi.from << stopUeno
# stopShimbashi.to << stopUeno

# stopShimbashi.from << stopRoppongi
# stopShimbashi.to << stopRoppongi
# stopRoppongi.from << stopShimbashi
# stopRoppongi.to << stopShimbashi

# stopRoppongi.from << stopOdaiba
# stopRoppongi.to << stopOdaiba
# stopOdaiba.from << stopRoppongi
# stopOdaiba.to << stopRoppongi

# stopRamen.from << stopRoppongi
# stopRamen.to << stopRoppongi
# stopRoppongi.from << stopRamen
# stopRoppongi.to << stopRamen

# stopRoppongi.from << stopShibuya
# stopRoppongi.to << stopShibuya
# stopShibuya.from << stopRoppongi
# stopShibuya.to << stopRoppongi

# stopShibuya.from << stopShinjuku
# stopShibuya.to << stopShinjuku
# stopShinjuku.from << stopShibuya
# stopShinjuku.to << stopShibuya

# stopShinjuku.from << stopIkebukuro
# stopShinjuku.to << stopIkebukuro
# stopIkebukuro.from << stopShinjuku
# stopIkebukuro.to << stopShinjuku

# stopIkebukuro.from << stopIdabashi
# stopIkebukuro.to << stopIdabashi
# stopIdabashi.from << stopIkebukuro
# stopIdabashi.to << stopIkebukuro

# stopIdabashi.from << stopRoppongi
# stopIdabashi.to << stopRoppongi
# stopRoppongi.from << stopIdabashi
# stopRoppongi.to << stopIdabashi