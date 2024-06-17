class CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars.to_json(include: { user: { except: %i[password created_at updated_at] } }, except: [:user_id])
  end
end
