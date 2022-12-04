require "open-uri"
# Examples:

#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
OrderItem.destroy_all
Order.destroy_all
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
MenuItem.destroy_all



puts "Adding the first 5 ingredients"

ingredient1 = Ingredient.new(
  name: "Rice",
  quantity: "10",
  unit: "kg",
  category: "other"
)
ingredient1.save
puts "I just created ingredient nr #{ingredient1.id}"

ingredient2 = Ingredient.new(
  name: "Chicken",
  quantity: "20",
  unit: "kg",
  category: "protein"
)
ingredient2.save
puts "I just created ingredient nr #{ingredient2.id}"

ingredient3 = Ingredient.new(
  name: "Fish",
  quantity: "10",
  unit: "pcs",
  category: "protein"
)
ingredient3.save
puts "I just created ingredient nr #{ingredient3.id}"

ingredient4 = Ingredient.new(
  name: "Oil",
  quantity: "10",
  unit: "l",
  category: "protein"
)
ingredient4.save
puts "I just created ingredient nr #{ingredient4.id}"


ingredient5 = Ingredient.new(
  name: "Beef",
  quantity: "10",
  unit: "kg",
  category: "protein"
)
ingredient5.save
puts "I just created ingredient nr #{ingredient5.id}"

ingredient6 = Ingredient.new(
  name: "Tomato",
  quantity: "10",
  unit: "kg",
  category: "vegetable"
)
ingredient6.save
puts "I just created ingredient nr #{ingredient6.id}"

ingredient7 = Ingredient.new(
  name: "Potato",
  quantity: "9",
  unit: "kg",
  category: "protein"
)
ingredient7.save
puts "I just created ingredient nr #{ingredient7.id}"

ingredient8 = Ingredient.new(
  name: "Onion",
  quantity: "9",
  unit: "kg",
  category: "vegetable"
)
ingredient8.save
puts "I just created ingredient nr #{ingredient8.id}"

ingredient9 = Ingredient.new(
  name: "Spinach",
  quantity: "4",
  unit: "kg",
  category: "vegetable"
)
ingredient9.save
puts "I just created ingredient nr #{ingredient9.id}"

ingredient10 = Ingredient.new(
  name: "Sugar",
  quantity: "4",
  unit: "kg",
  category: "other"
)
ingredient10.save
puts "I just created ingredient nr #{ingredient10.id}"

ingredient11 = Ingredient.new(
  name: "Flour",
  quantity: "4",
  unit: "kg",
  category: "other"
)
ingredient11.save
puts "I just created ingredient nr #{ingredient11.id}"

ingredient12 = Ingredient.new(
  name: "Cheese",
  quantity: "4",
  unit: "kg",
  category: "dairy"
)
ingredient12.save
puts "I just created ingredient nr #{ingredient12.id}"

photo1 = URI.open("https://www.wholesomeyum.com/wp-content/uploads/2022/10/wholesomeyum-Chicken-Korma-1.jpg")

p "Adding the first 5 menu items"
item1 = MenuItem.new(
  name: "Chicken Korma",
  description: "chicken breast fillet strips with fresh ginger, almond, cashews, and raisins in curry cream sauce",
  spiciness: "3",
  cooking_time: "10",
  price: "12,90",
  menu_item_type: "main dish"
)
item1.photos.attach(io: photo1, filename: "chicken_korma.png", content_type: "image/png")
item1.save
puts "I just created menu item nr #{item1.id}"

photo2 = URI.open("https://images.unsplash.com/photo-1596797038530-2c107229654b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80")
item2 = MenuItem.new(
  name: "Chicken Jalferezi",
  description: "with special sauce, onions, bell peppers, garlic and tomatoes",
  spiciness: "3",
  cooking_time: "7",
  price: "11,90",
  menu_item_type: "main dish"
)
item2.photos.attach(io: photo2, filename: "chiken_jalferezi.png", content_type: "image/png")
item2.save
puts "I just created menu item nr #{item2.id}"

photo3 = URI.open("https://static01.nyt.com/images/2021/11/10/dining/ZS-mixed-sabzi/ZS-mixed-sabzi-articleLarge.jpg")

item3 = MenuItem.new(
  name: "Mixed Sabzi",
  description: "with various fresh haouse-style vegetables in curry sauce",
  spiciness: "2",
  cooking_time: "7",
  price: "10,90",
  menu_item_type: "main dish"
)
item3.photos.attach(io: photo3, filename: "mixed_sabzi.png", content_type: "image/png")
item3.save
puts "I just created menu item nr #{item3.id}"

photo4 = URI.open("https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/31a07405f479895a13b02aed87cb8998/Derivates/7299f9ff863c5eb61b8d2e9f9696bb103542f95b.jpg")

item4 = MenuItem.new(
  name: "Palak Paneer",
  description: "with homemade Indian cream cheese and leaf spinach in curry-cream sauce",
  spiciness: "3",
  cooking_time: "5",
  price: "9,90",
  menu_item_type: "main dish"
)
item4.photos.attach(io: photo4, filename: "palak_paneer.png", content_type: "image/png")
item4.save
puts "I just created menu item nr #{item4.id}"

photo5 = URI.open("https://img.chefkoch-cdn.de/rezepte/1043141209290503/bilder/401196/crop-960x540/gulab-jamun.jpg")

item5 = MenuItem.new(
  name: "Gulab Jaman",
  description: "traditional Indian style sweet curd balls",
  spiciness: "2",
  cooking_time: "5",
  price: "4,90",
  menu_item_type: "dessert"
)
item5.photos.attach(io: photo5, filename: "gulab_jaman.png", content_type: "image/png")
item5.save
puts "I just created menu item nr #{item5.id}"

photo6 = URI.open("https://www.eatbetter.de/sites/eatbetter.de/files/styles/full_width_tablet_4_3/public/2021-06/linsen_dahl_1.jpg?h=4521fff0&itok=8FByRmoN")

item6 = MenuItem.new(
  name: "Dal Curry",
  description: "lentils with fresh ginger, onions and garlic in curry sauce",
  spiciness: "2",
  cooking_time: "6",
  price: "9,80",
  menu_item_type: "main dish"
)
item6.photos.attach(io: photo6, filename: "dal_curry.png", content_type: "image/png")
item6.save
puts "I just created  menu item nr #{item6.id}"

recipe = Recipe.new
recipe.menu_item = item1
recipe.ingredient = ingredient1
recipe.quantity = 0.2
recipe.save

recipe = Recipe.new
recipe.menu_item = item1
recipe.ingredient = ingredient9
recipe.quantity = 0.2
recipe.save

recipe = Recipe.new
recipe.menu_item = item1
recipe.ingredient = ingredient6
recipe.quantity = 0.2
recipe.save

recipe = Recipe.new
recipe.menu_item = item1
recipe.ingredient = ingredient4
recipe.quantity = 0.2
recipe.save

recipe = Recipe.new
recipe.menu_item = item2
recipe.ingredient = ingredient12
recipe.quantity = 0.2
recipe.save

recipe = Recipe.new
recipe.menu_item = item2
recipe.ingredient = ingredient2
recipe.quantity = 0.2
recipe.save

recipe = Recipe.new
recipe.menu_item = item2
recipe.ingredient = ingredient2
recipe.quantity = 0.2
recipe.save

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
new_order = Order.create!(user: user2, status: 1)

new_order_item = OrderItem.create!(order: new_order, menu_item: item1, quantity: 1)
new_order_item = OrderItem.create!(order: new_order, menu_item: item2, quantity: 1)
new_order_item = OrderItem.create!(order: new_order, menu_item: item6, quantity: 2)

new_order = Order.create!(user: user3, status: 1)
new_order_item = OrderItem.create!(order: new_order, menu_item: item4, quantity: 2)
new_order_item.save

new_in_progress_order = Order.create!(user: user3, status: 2)
new_in_progress_order_item = OrderItem.create!(order: new_in_progress_order, menu_item: item3, quantity: 1)
new_in_progress_order_item = OrderItem.create!(order: new_in_progress_order, menu_item: item5, quantity: 2)

new_in_progress_order = Order.create!(user: user2, status: 2)
new_in_progress_order_item = OrderItem.create!(order: new_in_progress_order, menu_item: item4, quantity: 2)
new_in_progress_order_item = OrderItem.create!(order: new_in_progress_order, menu_item: item1, quantity: 3)

new_in_progress_order_item.save
new_order_item = OrderItem.create!(order: new_order, menu_item: item3, quantity: 1)
new_order_item = OrderItem.create!(order: new_order, menu_item: item1, quantity: 3)
new_order_item = OrderItem.create!(order: new_order, menu_item: item2, quantity: 2)

new_order = Order.create!(user: user2, status: 3)
new_order_item = OrderItem.create!(order: new_order, menu_item: item3, quantity: 1)
new_order = Order.create!(user: user3, status: 3)
new_order_item = OrderItem.create!(order: new_order, menu_item: item2, quantity: 3)


puts "Seeding completed. You now have #{Ingredient.count} ingredients and #{MenuItem.count} items"
puts "You also have #{User.count} users, that placed #{Order.count} orders with #{OrderItem.count} items"
