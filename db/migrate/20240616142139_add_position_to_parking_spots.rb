class AddPositionToParkingSpots < ActiveRecord::Migration[7.1]
  def change
    add_column :parking_spots, :position, :integer
  end
end
