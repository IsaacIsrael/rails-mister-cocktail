# frozen_string_literal: true

require 'json'

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed command (or created
# alongside the database with db:setup).
#
# Examples:
#
#  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#  Character.create(name: 'Luke', movie: movies.first)

puts 'Clean data Base'
Ingredient.destroy_all

puts 'Start creating the Ingredient'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = JSON.parse(URI.parse(url).open.read)

response['drinks'].each { |i| Ingredient.create(name: i['strIngredient1']) }

puts 'Finish creating the Ingredient'
