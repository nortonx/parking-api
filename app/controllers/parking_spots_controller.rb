class ParkingSpotsController < ApplicationController
  def index
    @parking_spots = ParkingSpot.all
    render json: @parking_spots
  end
end
