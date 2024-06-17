class ParkingSpotsController < ApplicationController
  def index
    @parking_spots = ParkingSpot.all
    render json: @parking_spots.to_json(include: { garage: { except: %i[created_at updated_at] } },
                                        except: [:garage_id])
  end
end
