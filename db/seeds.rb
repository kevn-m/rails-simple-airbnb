# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Destroying all Flats'
Flat.all.destroy_all

puts 'Creating flats'
4.times do
  Flat.create!(
    name: "#{Faker::Games::WorldOfWarcraft.hero} flat",
    address: Faker::Address.street_address,
    description: Faker::Quote.yoda,
    price_per_night: rand(50..500),
    number_of_guests:rand(1..20)
    )
end
