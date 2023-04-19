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

    if @perform.save # true: redirect to spectacle show
      redirect_to spectacle_path(@spectacle)
    else # false: render the form again with the errors ( model perform validates interprétés par simple_form)
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @perform = Perform.find(params[:id])
  end

  def update
    @perform = Perform.find(params[:id])
    @perform.update(params[:perform])
    redirect_to perform_path(@perform)
  end

  def show
  end

  private
  def set_spectacle
    #@spectacle = Spectacle.find(params[:spectacle_id])
    #@perform.spectacle = @spectacle
  end



  def perform_params
    params.require(:perform).permit(:date, :cost, :spectacle_id, :location_id)
  end
end
