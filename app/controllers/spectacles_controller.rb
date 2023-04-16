class SpectaclesController < ApplicationController

  before_action :set_spectacle, only: [:show, :edit, :update, :destroy]

  def index
    @spectacles = Spectacle.all
    @spectacle = @spectacles.last
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
    #@spectacle = Spectacle.find(params[:id])
  end

  def edit
    #@spectacle = Spectacle.find(params[:id])
  end

  def update
    #@spectacle = Spectacle.find(params[:id])
    @spectacle.update(spectacle_params)
    redirect_to spectacles_path
  end
  def destroy
    #@spectacle = Spectacle.find(params[:id])
    @spectacle.destroy
    redirect_to spectacles_path, status: :see_other
  end

  private

  def set_spectacle
    @spectacle = Spectacle.find(params[:id])
  end

  def spectacle_params
    params.require(:spectacle).permit(:title, :company, :description, :director, :duration, :distribution, :production, :coproduction, :origin, :public)
  end

end
