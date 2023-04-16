class LocationsController < ApplicationController

  def index
    @location = Location.all
  end

  def new
    @location = Location.new
  end

  def create = Location.new(location_params)
    @location.save
    redirect_to locations_path
  end

end
