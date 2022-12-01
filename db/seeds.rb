# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
OrderItem.destroy_all
Order.destroy_all
User.destroy_all
Ingredient.destroy_all
MenuItem.destroy_all


p "Adding the first 5 ingredients"

ingredient = Ingredient.new(
  name: "pasta",
  quantity: "20",
  unit: "kg",
  category: "carbohydrate"
)
ingredient.save
puts "I just created ingredient nr #{ingredient.id}"

ingredient = Ingredient.new(
  name: "fish",
  quantity: "10",
  unit: "pcs",
  category: "protein"
)
ingredient.save
puts "I just created ingredient nr #{ingredient.id}"

ingredient = Ingredient.new(
  name: "peas",
  quantity: "7",
  unit: "kg",
  category: "vegetable"
)
ingredient.save
puts "I just created ingredient nr #{ingredient.id}"

ingredient = Ingredient.new(
  name: "cream",
  quantity: "20",
  unit: "l",
  category: "dairy"
)
ingredient.save
puts "I just created ingredient nr #{ingredient.id}"

ingredient = Ingredient.new(
  name: "black beans",
  quantity: "30",
  unit: "can",
  category: "protein"
)
ingredient.save
puts "I just created ingredient nr #{ingredient.id}"

p "Adding the first 3 menu items"
item1 = MenuItem.new(
  name: "spring rolls",
  description: "small starter to make your waiting time pass faster",
  spiciness: "1",
  cooking_time: "5",
  price: "4",
  menu_item_type: "starter"
)
item1.save
puts "I just created ingredient nr #{item1.id}"

item2 = MenuItem.new(
  name: "tofu curry",
  description: "coconut based thai curry",
  spiciness: "3",
  cooking_time: "20",
  price: "8",
  menu_item_type: "main dish"
)
item2.save
puts "I just created ingredient nr #{item2.id}"

item3 = MenuItem.new(
  name: "stir fry noodles",
  description: "noodles with lots of veggies",
  spiciness: "2",
  cooking_time: "10",
  price: "7.5",
  menu_item_type: "main dish"
)
item3.save
puts "I just created ingredient nr #{item3.id}"

puts "Creating an user admin to log in"
user = User.new(
  email: "admin@restaurant.com",
  password: "123456",
  restaurant_user: true
)
user.save!
puts "I just created an admin user nr #{user.id}"
puts "Use admin@restaurant.com and 123456 to log in"


puts "Creating a guest account to log in"
user2 = User.new(
  email: "ana@mail.com",
  password: "123456",
  restaurant_user: false
)
user2.save!
puts "I just created a guest user nr #{user2.id}"
puts "Use ana@mail.com and 123456 to log in as guest"

puts "Creating a guest account to log in"
user3 = User.new(
  email: "bob@mail.com",
  password: "123456",
  restaurant_user: false
)
user3.save!
puts "I just created a guest user nr #{user3.id}"
puts "Use bob@mail.com and 123456 to log in as guest"

puts "Creating cart (waiting) order"
new_order = Order.create!(user: user2, active: true)

new_order_item = OrderItem.create!(order: new_order, menu_item: item1, quantity: 1)
new_order_item = OrderItem.create!(order: new_order, menu_item: item2, quantity: 1)
new_order_item = OrderItem.create!(order: new_order, menu_item: item3, quantity: 2)

puts "New order #{new_order.id} id was created. The status is #{new_order.status} and active: #{new_order.active}"

new_in_progress_order = Order.create!(user: user3, status: 1, active: false)
new_in_progress_order_item = OrderItem.create!(order: new_in_progress_order, menu_item: item3, quantity: 1)
new_in_progress_order_item = OrderItem.create!(order: new_in_progress_order, menu_item: item1, quantity: 2)
puts "New order #{new_in_progress_order.id} id was created. The status is #{new_in_progress_order.status} and active: #{new_in_progress_order.active}"

puts "Seeding completed. You now have #{Ingredient.count} ingredients and #{MenuItem.count} items"
