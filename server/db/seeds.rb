require 'faker'

# Create 10 restaurants
10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address
  )
end

# Create 20 pizza
20.times do
  Pizza.create!(
    name: Faker::Food.dish,
    ingredients: Faker::Food.ingredient
  )
end

# Create 50 restaurant_pizza
50.times do
  RestaurantPizza.create!(
    price: rand(1...13),
    restaurant: Restaurant.order("RANDOM()").first,
    pizza: Pizza.order("RANDOM()").first
  )
end