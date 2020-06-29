class PagesController < ApplicationController
  def home
    generate_map_data
  end # implicit rendering of /pages/home.html.erb
end
