# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

100.times do
  Movie.create!([
    { name: Faker::Movie.title }
  ])
end

10.times do
  Client.create!([
    { name: Faker::Name.name, age: Faker::Number.between(from: 18, to: 100) }
  ])
end


# db/seeds.rb



# # Crea 20 películas ficticias
# 20.times do
#   Movie.create!(
#     title: Faker::Movie.title,
#     director: Faker::Name.name,
#     synopsis: Faker::Lorem.paragraph(sentence_count: 3)
#   )
# end

# # Crea 20 clientes ficticios
# 20.times do
#   Client.create!(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     address: Faker::Address.full_address
#   )
# end

# puts "20 películas y 20 clientes han sido creados exitosamente."
