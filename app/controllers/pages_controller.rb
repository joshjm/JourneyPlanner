class PagesController < ApplicationController
  def home
    @scale = 500/25
    @stops = Stop.all
    # for edge in @edges do
    #   from = @stops[edge.from_id]
    #   from_x = from.location_x
    #   from_y = from.location_y
    #   to = @stops[edge.to_id]
    #   to_x = to.location_x
    #   to_y = to.location_y
    puts "###################################################"
    @pair_points = Edge.all.map {|e| [
      Stop.find(e.from_id).location_x, 
      Stop.find(e.from_id).location_y,
      Stop.find(e.to_id).location_x, 
      Stop.find(e.to_id).location_y
    ]}
    puts "###################################################"

      
     
    # @pair_points = [[[12,4],[4,5]], [[3,3], [6,18]]] # test
  end # implicit rendering of /pages/home.html.erb
end
