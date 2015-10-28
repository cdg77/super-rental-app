class CitiesController < ApplicationController
  def index
    @cities = City.all
    render :index
  end

  def show
    @city = City.find(params[:id])
    render :show
  end

  def new
    @city = City.new
    render :new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to  cities_path
    else
      render :new
    end
  end

  private
  def city_params
    params.require(:city).permit(:name, :state, :country)
  end
end
