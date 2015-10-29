class RentalsController < ApplicationController
    def show
        @city = City.find(params[:city_id])
        @rentals = Rental.all
        redirect_to city_path
    end

end
