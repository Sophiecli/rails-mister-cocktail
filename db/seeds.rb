# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'
# require 'faker'

puts "Cleansing out ingredient database..."
Ingredient.destroy_all

puts "Okay! Now generating new ingredient database..."

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredient = JSON.parse(ingredient_serialized)

ingredient['drinks'].each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end

puts "Ingredients database has been generated"

Cocktail.destroy_all

# Cloudinary photos
photos = ['https://res.cloudinary.com/sophiecli/image/upload/v1542347238/Mister%20Cocktail%20App/whiskeysour.jpg',
          'https://res.cloudinary.com/sophiecli/image/upload/v1542347208/Mister%20Cocktail%20App/gintonic.jpg',
          'https://res.cloudinary.com/sophiecli/image/upload/v1547019026/Mister%20Cocktail%20App/alcoholic-beverage-ale-beer-1323593.jpg',
          'https://res.cloudinary.com/sophiecli/image/upload/v1547019027/Mister%20Cocktail%20App/alcoholic-bar-beverage-338713.jpg',
          'https://res.cloudinary.com/sophiecli/image/upload/v1542347224/Mister%20Cocktail%20App/pinkpanther.jpg']



puts "Adding Cocktails"
5.times do
  drink = Cocktail.create(name: Faker::Beer.name)
  drink.remote_photo_url = photos.sample
  drink.save
end

puts "Added new cocktails!"
