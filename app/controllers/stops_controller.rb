class StopsController < ApplicationController
  before_action :generate_map_data
  def new
  end

  def destroy
    Stop.find(params[:id]).destroy
    redirect_to action: 'index'
  end

  def index
    @stops = Stop.all
  end
end
