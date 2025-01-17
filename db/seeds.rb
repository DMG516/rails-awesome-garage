# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts 'Cleaning database...'
Car.destroy_all
Owner.destroy_all

# 2. Create the instances 🏗️
puts 'Creating owners...'
adam = Owner.create!(nickname: 'AutoAdam')
bob = Owner.create!(nickname: 'Bobcat Racer')
chris = Owner.create!(nickname: 'CruisingChris')

puts 'Creating cars...'
Car.create!(brand: 'Mercedes', model: 'SL500', year: 1987, fuel: 'diesel', owner: adam)
Car.create!(brand: 'Toyota', model: 'Urban Cruiser', year: 2009, fuel: 'petrol', owner: chris)
Car.create!(brand: 'Tesla', model: 'Roadster', year: 2024, fuel: 'electric', owner: bob)

# 3. Display a message 🎉
puts "Finished! Created #{Owner.count} owner(s) and #{Car.count} car(s)."
