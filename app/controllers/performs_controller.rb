class PerformsController < ApplicationController
  before_action :set_spectacle, only: [:show, :edit, :update, :destroy]
  before_action :set_location, only: [:show, :edit, :update, :destroy]


  def index
    @performs = Perform.all
  end

  def new
    @spectacle = Spectacle.find(params[:spectacle_id]) # accsess to the spectacle in the form with the right id
    @locations = Location.all # accsess to all locations in the form
    @perform = Perform.new # instanciate the form (give the right performs hashes : with nil values)
  end

  def create

    @spectacle = Spectacle.find(params[:spectacle_id]) # accsess to spectacle in the form with the right id
    @location = Location.find(params[:location_id])
    @perform.spectacle = @spectacle

    # build the perform with cost and dates and other params
    @perform = Perform.new(perform_params)


    # find the spectacle
    # @spectacle = Spectacle.find(params[:spectacle_id])
    # associate the perform with the spectacle
    # @perform.spectacle = @spectacle

    # find  locations
    #@locations = Location.all
    #@locations.each do | location |
      #@perform.location = @location
      #@location.name = @perform.location.name
    #end

    #@perform.locations = @locations

    # save the perform
    if @perform.save # true: redirect to spectacle show
      redirect_to spectacle_path(@spectacle)
    else # false: render the form again with the errors ( model perform validates interprétés par simple_form)
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private
  def set_spectacle
    @spectacle = Spectacle.find(params[:spectacle_id])
    @perform.spectacle = @spectacle
  end
  def set_location
    @location = Location.find(params[:location_id])
    @perform.location = @location
  end



  def perform_params
    params.require(:perform).permit(:date, :cost, :spectacle_id, :location_id)
  end
end
