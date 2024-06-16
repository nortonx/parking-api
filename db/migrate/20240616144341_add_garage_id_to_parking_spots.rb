class AddGarageIdToParkingSpots < ActiveRecord::Migration[7.1]
  def change
    add_column :parking_spots, :garage_id, :integer
  end
end
