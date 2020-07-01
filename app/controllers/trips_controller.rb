class TripsController < ApplicationController
  def index
    @trips = Trip.all

  end

  def all
    @trips = Trip.all

  end

  def new
    trip_cost = 10
    @current_user.balance -= trip_cost
    @current_user.trips.create(trip_params)
    @current_user.save
    redirect_to trips_index_path #show page
    generate_map_data
  end

  def create
    # need to get the current user object, and call create on it. 

  end

  def view
  end

  def edit
  end

  private # 
  def trip_params
    #just a helper function
    params.permit(:user, :start_id, :end_id, :date)
  end
end
