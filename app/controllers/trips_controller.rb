class TripsController < ApplicationController
  def index
    @trips = Trip.all

  end

  def all
    @trips = Trip.all

  end

  def new
  end

  def create
    # need to get the current user object, and call create on it. 
    @current_user.trips.create(trip_params)
    #trip = Trip.create trip_params 
    #puts "created trip: #{trip.id}"
    redirect_to trips_index_path #show page
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
