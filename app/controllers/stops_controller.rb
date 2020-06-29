class StopsController < ApplicationController
  before_action :generate_map_data
  def new
  end

  def delete
  end

  def index
    @stops = Stop.all
  end
end
