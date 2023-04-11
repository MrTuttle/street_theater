class SpectaclesController < ApplicationController
  def index
    @spectacles = Spectacle.all
  end

  def new
    @spectacle = Spectacle.new # needed to instantiate the form_for
  end

  def create
    @spectacle = Spectacle.new(spectacle_params)
    @spectacle.save
    redirect_to spectacles_path
  end

  def show
    @spectacle = Spectacle.find(params[:id])
  end

  def edit
    @spectacle = Spectacle.find(params[:id])
  end

  def update
    @spectacle = Spectacle.find(params[:id])
    @spectacle.update(spectacle_params)
    redirect_to spectacles_path
  end
  def destroy
    @spectacle = Spectacle.find(params[:id])
    @spectacle.destroy
    redirect_to spectacles_path, status: :see_other
  end

  private

  def spectacle_params
    params.require(:spectacle).permit(:title, :description, :director, :duration, :distribution, :production, :coproduction, :origin, :public)
  end

end
