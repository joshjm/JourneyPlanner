class StopsController < ApplicationController
  before_action :generate_map_data
  def new

    redirect_to action: 'index'

  end

  def destroy
    # destroy trips
    # Edge.where("to_id=#{params[:id]}").destroy_all
    # Edge.where("from_id=#{params[:id]}").destroy_all
    stop_name = Stop.find(params[:id])
    stop_name.destroy
    redirect_to action: 'index'
  end

  def index
    @stops = Stop.all
  end
  def create 
    
    newStation = Stop.create(stop_params)
    newStation.save
    redirect_to action: 'index'

  end

  private 
  def stop_params
    params.permit(:name, :location_x, :location_y, :operational)
  end
end
