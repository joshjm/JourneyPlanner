class StopsController < ApplicationController
  before_action :generate_map_data
  def new
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
end
