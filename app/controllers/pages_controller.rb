class PagesController < ApplicationController
  def home
    @stops = Stop.all
    @edges = Edge.all
  end # implicit rendering of /pages/home.html.erb
end
