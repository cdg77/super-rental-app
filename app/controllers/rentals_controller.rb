class RentalsController < ApplicationController

  def new
    @city = City.find(params[:city_id])
    @rental = Rental.new
  end


  def create
    @city = City.find(params[:city_id])
    @rental = Rental.new(rental_params)
    flash[:notice] = "Success! Rental Created!"
    redirect_to city_path(@city)
  else
    flash[:alert] = 'Oops... Somethings wrong!'
    render :new
  end

  def show
      @city = City.find(params[:city_id])
      @rentals = Rental.all
      redirect_to city_path
  end
end
