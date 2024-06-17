class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users.to_json(
      include: { group: { except: %i[created_at updated_at] } }, except: [:group_id]
    )
  end
end
