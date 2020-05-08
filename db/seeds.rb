require 'faker'

Purveyor.destroy_all
Restaurant.destroy_all
Product.destroy_all

p1 = Purveyor.create(name: "Steven B's Beef", address: Faker::Address.full_address, product: "meat" )
p2 = Purveyor.create(name: "Berry Fresh Produce", address: Faker::Address.full_address, product: "vegetable")
p3 = Purveyor.create(name: "Sweet Treat Desserts", address: Faker::Address.full_address, product: "dessert")
p4 = Purveyor.create(name: "Scott's Sodas & Drinks", address: Faker::Address.full_address, product: "drink")

r1 = Restaurant.create(name: "Chez Osgood")

10.times do 
  name = Faker::Creature::Animal.name
  price = Faker::Number.between(from: 20, to: 100)
  Product.create(name: name, price: price, product_type: "meat", purveyor_id:p1.id ,restaurant_id:r1.id)
end
10.times do 
  name = Faker::Food.vegetables
  price = Faker::Number.between(from: 20, to: 100)
  Product.create(name: name, price: price, product_type: "vegetable", purveyor_id:p2.id ,restaurant_id:r1.id)
end
10.times do 
  name = Faker::Dessert.variety
  price = Faker::Number.between(from: 20, to: 100)
  Product.create(name: name, price: price, product_type: "dessert", purveyor_id:p3.id , restaurant_id:r1.id)
end
10.times do 
  name = Faker::Beer.brand
  price = Faker::Number.between(from: 20, to: 100)
  Product.create(name: name, price: price, product_type: "drink", purveyor_id:p4.id , restaurant_id:r1.id)
end