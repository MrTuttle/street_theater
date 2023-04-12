class PerformsController < ApplicationController

  def new
    raise
    @spectacle = Spectacle.find(params[:spectacle_id])
    @perform = Perform.new
  end
  def create
    # build the perform with cost and dates and other params
    @perform = Perform.new(perform_params)
    # find the spectacle
    @spectacle = Spectacle.find(params[:spectacle_id])
    # associate the perform with the spectacle
    @perform.spectacle = @spectacle
    # save the perform
    @perform.save
    redirect_to spectacle_path(@spectacle)
  end

  private
  def perform_params
    params.require(:perform).permit(:date, :cost)
  end
end
