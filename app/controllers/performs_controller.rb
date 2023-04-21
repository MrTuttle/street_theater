class PerformsController < ApplicationController
  before_action :set_spectacle, only: [:show, :edit, :update, :destroy]

  def index
    @performs = Perform.all
  end

  def new
    @spectacle = Spectacle.find(params[:spectacle_id])
    @perform = Perform.new
    @locations = Location.all
    @location = Location.new

  end

  def create
    # build the perform with cost and dates and other params
    @perform = Perform.new(perform_params)
    # find the spectacle
    @spectacle = Spectacle.find(params[:spectacle_id])
    # associate the perform with the spectacle
    @perform.spectacle = @spectacle
    # save the perform

    if @perform.save # true: redirect to perform show
      #redirect_to spectacle_path(@spectacle)
      redirect_to performs_path
    else # false: render the form again with the errors ( model perform validates interprétés par simple_form)
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @perform = Perform.find(params[:id])
    @perform.location_id = @location

    #try to connect list of locations
    @locations = Location.all.ids #give me the list of ids

    #????.map { |location| [location.name, location.id] }
    #@location = Location.find(params[:location_id])
    #@location = Location.find(params[:location_id]).name
    #@location = Location.find(:location_id).name


  end

  def update
    @perform = Perform.find(params[:id])
    #@perform.update(params[:perform])
    @perform.update(perform_params)

    redirect_to perform_path(@perform)
  end

  def show
    @perform = Perform.find(params[:id])
    @location_name = Location.find(@perform.location_id).name
    @spectacle_title = Spectacle.find(@perform.spectacle_id).title

  end

  def destroy
    @perform = Perform.find(params[:id])
    @perform.destroy
    redirect_to performs_path, status: :see_other
  end

  private
  def set_spectacle
   # @spectacle = Spectacle.find(params[:spectacle_id])
    #@perform.spectacle = @spectacle
  end



  def perform_params
    params.require(:perform).permit(:id, :date, :cost, :spectacle_id, :location_id)
  end
end
