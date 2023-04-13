class PerformsController < ApplicationController

  def new

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

    if @perform.save # true: redirect to spectacle show
      redirect_to spectacle_path(@spectacle)
    else # false: render the form again with the errors ( model perform validates interprétés par simple_form)
      render :new, status: :unprocessable_entity
    end
  end

  private
  def perform_params
    params.require(:perform).permit(:date, :cost)
  end
end
