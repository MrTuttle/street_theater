class LocationsController < ApplicationController
  def index
    # @locations = Location.all
    @locations = Location.geocoded # returns only locations with coordinates

    @markers = @locations.map do |location|
      {

        lat: location.latitude,
        lng: location.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {location: location}),
        marker_html: render_to_string(partial: "marker", locals: {location: location}) # pass the location to the partial

      }
    end
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      render :new
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    redirect_to locations_path
  end


  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end

  private

  def location_params
    params.require(:location).permit(:name, :address, :longitude, :latitude)
  end


end
