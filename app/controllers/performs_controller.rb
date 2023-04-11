class PerformsController < ApplicationController

  def new
    @perform = Spectacle.find(params[:spectacle_id])
    @perform = Perform.new
  end
  def create
    @perform = Perform.new(perform_params)
    @perform.spectacle = Spectacle.find(params[:spectacle_id])
    @perform.save
    redirect_to spectacle_path(@perform.spectacle)
  end
end
