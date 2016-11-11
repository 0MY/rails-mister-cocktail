# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")
milk = Ingredient.create(name: "milk")
water = Ingredient.create(name: "water")

lemonade = Cocktail.create(name: "lemonade")
mint_sirup = Cocktail.create(name: "mint sirup")
mint_milkshake = Cocktail.create(name: "mint milkshake")

# lemonade
Dose.create(description: "1l", cocktail_id: lemonade.id, ingredient_id: water.id)
Dose.create(description: "1", cocktail_id: lemonade.id, ingredient_id: lemon.id)

# mint sirup
Dose.create(description: "1l", cocktail_id: mint_sirup.id, ingredient_id: water.id)
Dose.create(description: "3", cocktail_id: mint_sirup.id, ingredient_id: mint.id)

# lemon milkshake
Dose.create(description: "500ml", cocktail_id: mint_milkshake.id, ingredient_id: milk.id)
Dose.create(description: "500ml", cocktail_id: mint_milkshake.id, ingredient_id: ice.id)
Dose.create(description: "5", cocktail_id: mint_milkshake.id, ingredient_id: lemon.id)
