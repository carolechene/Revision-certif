# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying DBS !!!"

Flat.destroy_all
User.destroy_all
Renting.destroy_all

puts "DB DOWN"

puts "Creating 5 users"

gala = User.create!(
  email: "gala@mail.com",
  password: "azerty"
)
carole = User.create!(
  email: "carole@mail.com",
  password: "carole"
)
rayane = User.create!(
  email: "rayane@mail.com",
  password: "rayane"
)
canelle = User.create!(
  email: "canelle@mail.com",
  password: "canelle"
)
kevin = User.create!(
  email: "kevin@mail.com",
  password: "azerty"
)

puts "Users created with very secret passwords"

puts "Creating 10 flats"

10.times do
  Flat.create!(
    address: Faker::Address.full_address,
    description: Faker::ChuckNorris.fact,
    price: rand(20..2000),
    user: User.all.sample
  )
end

puts "Flats created"
