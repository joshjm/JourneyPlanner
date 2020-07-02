class EdgesController < ApplicationController
  def new
    newEdge = Edge.create(edge_params) #this is only a 1 way edge. need to create a way to make the reverse too
    newEdge.save
    generate_map_data()
    redirect_to :stops
  end

  def delete
  end


  def create 

  end

  private 
  def edge_params
    params.permit(:from_id, :to_id)
  end
end
