class CitiesController < ApplicationController
  def index
    @cities = City.all
    render :index
  end

  def show
    @city = City.find(params[:id])
    # @rental = @city.rentals.new
    render :show
  end

  def new
    @city = City.new
    render :new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      flash[:notice] = 'Success! State Added!'
      redirect_to  cities_path
    else
      flash[:alert] = 'Oops... Something went wrong!'
      render :new
    end
  end

  def edit
    @city = City.find(params[:id])
    render :edit
  end

  def update
    @city = City.find(params[:id])
    if @city.update(city_params)
      flash[:notice] = 'City updated successfully!'
      redirect_to cities_path
    else
      flash[:alert] = 'Oops... Something went wrong, city.name was not updated!'
      render :edit
    end
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to cities_path
  end
  


  private
  def city_params
    params.require(:city).permit(:name, :state, :country)
  end
end
