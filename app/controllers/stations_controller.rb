class StationsController < ApplicationController
  def index
  end

  def search
    stations = RailwayJp::Station.all
    @search_results = stations.select{|station| station.postcode == params[:search]}

    render :index
    #redirect_to stations_index_path
  end
end
