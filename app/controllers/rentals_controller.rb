class RentalsController < ApplicationController

  def new
    @city = City.find(params[:city_id])
    @rental = @city.rentals.new
  end

  def create
    @city = City.find(params[:city_id])
    @rental = Rental.new(rental_params)
    if @rental.save
      @city.rentals.push(@rental)
      flash[:notice] = "Success! Rental Created!"
      redirect_to city_path(@city)
    else
      flash[:alert] = 'Oops... Somethings wrong!'
      render :new
    end
  end

  def show
      @city = City.find(params[:city_id])
      @rentals = Rental.all
      redirect_to city_path
  end

  def edit
    @city = City.find(params[:city_id])
    @rental = Rental.find(params[:id])
    render :edit
  end

  def update
    @city = City.find(params[:city_id])
    @rental = Rental.find(params[:id])
    if @rental.update(rental_params)
      flash[:notice] = 'Rental Uddated!'
      redirect_to city_path(@city)
    else
      flash[:alert] = 'Oops... Something went wrong, the rental was not updated!'
      render :edit
    end
  end

  def destroy
    @city = City.find(params[:city_id])
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to city_path
  end


  private
  def rental_params
    params.require(:rental).permit(:owner, :kind, :image, :bedrooms)
  end
end
