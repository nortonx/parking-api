# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Group.destroy_all

Group.create!({
  name: "main",
})

puts "Created #{Group.count} groups."

User.destroy_all

User.create!([{
  name: "John Doe",
  email: "johndoe@domain.com",
  group: Group.first
}])

23.times do |i|
  User.create!({
    name: "User #{i+1}",
    email: "user_#{i+1}@domain.com",
    group: Group.first
  })
end

puts "Created #{User.count} users."

Garage.create!({
  name: "Main Garage",
  location: "123 Main St",
})

puts "Created #{Garage.count} garages."

15.times do |i|
  ParkingSpot.create!({
    name: "Spot #{i+1}",
    position: i+1,
    garage: Garage.first
  })
end

puts "Created #{ParkingSpot.count} parking spots."