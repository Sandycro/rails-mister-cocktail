# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Cocktail.destroy_all
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Martini")
Cocktail.create(name: "Mint Julep")
Cocktail.create(name: "Bloody Mary")
Cocktail.create(name: "Whiskey Sour")
Cocktail.create(name: "Caipirinha")

require "open-uri"

file = URI.open('https://res.cloudinary.com/dxrby0f3r/image/upload/v1589644937/timur-romanov-PSj-v1o2s28-unsplash_y9xutx.jpg')
cocktail = Cocktail.new(title: 'NES', body: "A great console")
cocktail.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating Ingredient...'

["lemon", "ice", "mint leaves"].each do |attribute|
  ingredient = Ingredient.create(name: attribute)
  puts "Created! #{ingredient.name}"
end
puts 'Finished!'

