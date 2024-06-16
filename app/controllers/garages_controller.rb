class GaragesController < ApplicationController
  def index
    @garages = Garage.all
    render json: @garages
  end
end
