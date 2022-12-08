require "open-uri"

OrderItem.destroy_all
Order.destroy_all
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
MenuItem.destroy_all

puts "Adding ingredients"

rice = URI.open("https://foodsguy.com/wp-content/uploads/2020/08/Can-You-Freeze-Uncooked-Rice.jpg")
rice_ing = Ingredient.new(
  name: "Risotto",
  quantity: "10",
  unit: "kg",
  category: "carbohydrate"
)
rice_ing.photos.attach(io: rice, filename: "rice.png", content_type: "image/png")
rice_ing.save
puts "I just created ingredient nr #{rice_ing.id}"

spaghetti = URI.open("https://images.unsplash.com/photo-1633352615955-f0c99e8b7e5a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80")
spaghetti_ing = Ingredient.new(
  name: "spaghetti",
  quantity: "20",
  unit: "kg",
  category: "carbohydrate"
)
spaghetti_ing.photos.attach(io: spaghetti, filename: "spaghetti.png", content_type: "image/png")
spaghetti_ing.save
puts "I just created ingredient nr #{spaghetti_ing.id}"

tagliatelle = URI.open("https://images.unsplash.com/photo-1542108339-4d5af99020f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")
tagliatelle_ing = Ingredient.new(
  name: "tagliatelle",
  quantity: "15",
  unit: "kg",
  category: "carbohydrate"
)
tagliatelle_ing.photos.attach(io: tagliatelle, filename: "tagliatelle.png", content_type: "image/png")
tagliatelle_ing.save
puts "I just created ingredient nr #{tagliatelle_ing.id}"

garganelli = URI.open("https://www.qbcucina.com/wp-content/uploads/2020/05/Garganelli-1.jpg")
garganelli_ing = Ingredient.new(
  name: "garganelli",
  quantity: "18",
  unit: "kg",
  category: "carbohydrate"
)
garganelli_ing.photos.attach(io: garganelli, filename: "garganelli.png", content_type: "image/png")
garganelli_ing.save
puts "I just created ingredient nr #{garganelli_ing.id}"

potato = URI.open("https://post.healthline.com/wp-content/uploads/2020/09/AN440-Potatoes-732x549-thumb-732x549.jpg")
potato_ing = Ingredient.new(
  name: "Potato",
  quantity: "9",
  unit: "kg",
  category: "carbohydrate"
)
potato_ing.photos.attach(io: potato, filename: "potato.png", content_type: "image/png")
potato_ing.save
puts "I just created ingredient nr #{potato_ing.id}"

tomato = URI.open("https://www.lifeberrys.com/img/article/tomato-pulp-1610367560-lb.jpg")
tomato_ing = Ingredient.new(
  name: "Tomato",
  quantity: "10",
  unit: "kg",
  category: "vegetable"
)
tomato_ing.photos.attach(io: tomato, filename: "tomato.png", content_type: "image/png")
tomato_ing.save
puts "I just created ingredient nr #{tomato_ing.id}"

onion = URI.open("https://images.immediate.co.uk/production/volatile/sites/30/2020/08/the-health-benefits-of-onions-main-image-700-350-8425535.jpg")
onion_ing = Ingredient.new(
  name: "Onion",
  quantity: "9",
  unit: "kg",
  category: "vegetable"
)
onion_ing.photos.attach(io: onion, filename: "onion.png", content_type: "image/png")
onion_ing.save
puts "I just created ingredient nr #{onion_ing.id}"

aubergine = URI.open("https://images.unsplash.com/photo-1639428134238-b548770d4b77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
aubergine_ing = Ingredient.new(
  name: "Aubergine",
  quantity: "4",
  unit: "kg",
  category: "vegetable"
)
aubergine_ing.photos.attach(io: aubergine, filename: "aubergine.png", content_type: "image/png")
aubergine_ing.save
puts "I just created ingredient nr #{aubergine_ing.id}"

bellpepper = URI.open("https://images.unsplash.com/photo-1608737637507-9aaeb9f4bf30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
bellpepper_ing = Ingredient.new(
  name: "Bell pepper",
  quantity: "9",
  unit: "kg",
  category: "vegetable"
)
bellpepper_ing.photos.attach(io: bellpepper, filename: "bellpepper.png", content_type: "image/png")
bellpepper_ing.save
puts "I just created ingredient nr #{bellpepper_ing.id}"

salad = URI.open("https://cdn.shopify.com/s/files/1/0242/7007/8048/products/MesclunMix.jpg?v=1601947758")
salad_ing = Ingredient.new(
  name: "Salad mix",
  quantity: "0.1",
  unit: "kg",
  category: "vegetable"
)
salad_ing.photos.attach(io: salad, filename: "salad.png", content_type: "image/png")
salad_ing.save
puts "I just created ingredient nr #{salad_ing.id}"

broccoli = URI.open("https://images.unsplash.com/photo-1587351177732-5b0739d1bd44?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80")
broccoli_ing = Ingredient.new(
  name: "Broccoli",
  quantity: "15.2",
  unit: "kg",
  category: "vegetable"
)
broccoli_ing.photos.attach(io: broccoli, filename: "broccoli.png", content_type: "image/png")
broccoli_ing.save
puts "I just created ingredient nr #{broccoli_ing.id}"

chicken = URI.open("https://assets.tendercuts.in/product/C/H/0b2422c9-12d1-4c13-bd96-9948ad114c97.webp")
chicken_ing = Ingredient.new(
  name: "Chicken",
  quantity: "27.2",
  unit: "kg",
  category: "protein"
)
chicken_ing.photos.attach(io: chicken, filename: "chicken.png", content_type: "image/png")
chicken_ing.save
puts "I just created ingredient nr #{chicken_ing.id}"

fish = URI.open("https://www.outtraveler.com/sites/default/files/2016/01/28/fish-cr_0.jpg")
fish_ing = Ingredient.new(
  name: "Fish",
  quantity: "8",
  unit: "pcs",
  category: "protein"
)
fish_ing.photos.attach(io: fish, filename: "chicken.png", content_type: "image/png")
fish_ing.save
puts "I just created ingredient nr #{fish_ing.id}"

chickpeas = URI.open("https://img.taste.com.au/K4kNaLMz/w720-h480-cfill-q80/taste/2009/05/chickpeas-143543-1.jpg")
chickpea_ing = Ingredient.new(
  name: "chickpeas",
  quantity: "12",
  unit: "kg",
  category: "protein"
)
chickpea_ing.photos.attach(io: chickpeas, filename: "chicken.png", content_type: "image/png")
chickpea_ing.save
puts "I just created ingredient nr #{chickpea_ing.id}"

egg = URI.open("https://media.zenfs.com/en/bbc_us_articles_995/1e5dc7bd90ba14641f84a61c62a7cb2c")
egg_ing = Ingredient.new(
  name: "egg",
  quantity: "35",
  unit: "pcs",
  category: "protein"
)
egg_ing.photos.attach(io: egg, filename: "chicken.png", content_type: "image/png")
egg_ing.save
puts "I just created ingredient nr #{egg_ing.id}"

oil = URI.open("https://post.healthline.com/wp-content/uploads/2020/08/corn-oil-732x549-thumbnail-732x549.jpg")
oil_ing = Ingredient.new(
  name: "Oil",
  quantity: "24.1",
  unit: "l",
  category: "other"
)
oil_ing.photos.attach(io: oil, filename: "oil.png", content_type: "image/png")
oil_ing.save
puts "I just created ingredient nr #{oil_ing.id}"

beef = URI.open("https://cdn.britannica.com/68/143268-050-917048EA/Beef-loin.jpg")
beef_ing = Ingredient.new(
  name: "Beef",
  quantity: "21.4",
  unit: "kg",
  category: "protein"
)
beef_ing.photos.attach(io: beef, filename: "beef.png", content_type: "image/png")
beef_ing.save
puts "I just created ingredient nr #{beef_ing.id}"

milk = URI.open("https://fil-idf.org/wp-content/uploads/2021/01/Standards.png")
milk_ing = Ingredient.new(
  name: "Milk",
  quantity: "15.8",
  unit: "l",
  category: "dairy"
)
milk_ing.photos.attach(io: milk, filename: "milk.png", content_type: "image/png")
milk_ing.save
puts "I just created ingredient nr #{milk_ing.id}"

parmigiano = URI.open("https://images.unsplash.com/photo-1654184750621-1110fe5afcdc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
parmigiano_ing = Ingredient.new(
  name: "Parmesan",
  quantity: "18.3",
  unit: "kg",
  category: "dairy"
)
parmigiano_ing.photos.attach(io: parmigiano, filename: "parmigiano.png", content_type: "image/png")
parmigiano_ing.save
puts "I just created ingredient nr #{parmigiano_ing.id}"

mascarpone = URI.open("https://www.daringgourmet.com/wp-content/uploads/2020/02/Mascarpone-4-square-scaled.jpg")
mascarpone_ing = Ingredient.new(
  name: "Mascarpone",
  quantity: "8.2",
  unit: "kg",
  category: "dairy"
)
mascarpone_ing.photos.attach(io: mascarpone, filename: "mascarpone.png", content_type: "image/png")
mascarpone_ing.save
puts "I just created ingredient nr #{mascarpone_ing.id}"

cotidiana = URI.open("https://thumb.tildacdn.com/tild3965-3632-4238-b962-633936383831/-/format/webp/photo.jpg")
cotidiana_salad = MenuItem.new(
  name: "Insalata cotidiana",
  description: "A nutritious combination of delicious tuna, giant beans and salad mix, seasoned with pomegranate and balsamic vinegar.",
  spiciness: "0",
  cooking_time: "10",
  price_cents: "690",
  menu_item_type: "starter",
  vegetarian: true
)
cotidiana_salad.photos.attach(io: cotidiana, filename: "cotidiana.png", content_type: "image/png")
cotidiana_salad.save
puts "I just created menu item nr #{cotidiana_salad.id}"

recipe = Recipe.create(menu_item: cotidiana_salad, ingredient: salad_ing, quantity: 0.2)
recipe = Recipe.create(menu_item: cotidiana_salad, ingredient: bellpepper_ing, quantity: 0.2)
recipe = Recipe.create(menu_item: cotidiana_salad, ingredient: oil_ing, quantity: 0.02)
recipe = Recipe.create(menu_item: cotidiana_salad, ingredient: tomato_ing, quantity: 0.02)

melanzane = URI.open("https://thumb.tildacdn.com/tild3635-3063-4866-a236-643064393832/-/format/webp/photo.jpg")
melanzane_salad = MenuItem.new(
  name: "Insalata di melanzane",
  description: "Baked and aromatic eggplant, combined with juicy, slightly chopped bell peppers and onions. It is seasoned with pesto sauce.",
  spiciness: "0",
  cooking_time: "10",
  price_cents: "650",
  menu_item_type: "starter",
  vegetarian: true,
  vegan: true
)
melanzane_salad.photos.attach(io: melanzane, filename: "melanzane.png", content_type: "image/png")
melanzane_salad.save
puts "I just created menu item nr #{melanzane_salad.id}"

recipe = Recipe.create(menu_item: melanzane_salad, ingredient: aubergine_ing, quantity: 0.5)
recipe = Recipe.create(menu_item: melanzane_salad, ingredient: tomato_ing, quantity: 0.5)

carpaccio = URI.open("https://thumb.tildacdn.com/tild3735-3966-4435-b261-643765626165/-/format/webp/-.jpg")
carpaccio_salad = MenuItem.new(
  name: "Insalata carpaccio",
  description: "Enjoy the explosive combination of beetroot, salad mix, apples, walnuts and the delicate Dor Blu cheese.",
  spiciness: "0",
  cooking_time: "7",
  price_cents: "450",
  menu_item_type: "starter"
)
carpaccio_salad.photos.attach(io: carpaccio, filename: "carpaccio.png", content_type: "image/png")
carpaccio_salad.save
puts "I just created menu item nr #{carpaccio_salad.id}"

recipe = Recipe.create(menu_item: cotidiana_salad, ingredient: salad_ing, quantity: 0.2)

caprese = URI.open("https://thumb.tildacdn.com/tild6239-6132-4532-b961-626565393636/-/format/webp/photo.jpg")
caprese_salad = MenuItem.new(
  name: "Caprese",
  description: "Fine mozzarella cheese with fresh and aromatic tomatoes. It is served with Grandma's unique sauce - pesto with nettle!",
  spiciness: "0",
  cooking_time: "7",
  price_cents: "550",
  menu_item_type: "starter",
  vegetarian: true
)
caprese_salad.photos.attach(io: caprese, filename: "caprese.png", content_type: "image/png")
caprese_salad.save
puts "I just created menu item nr #{caprese_salad.id}"

bruschette = URI.open("https://thumb.tildacdn.com/tild6165-3733-4837-b465-363339653963/-/format/webp/20.jpg")
bruschette_salad = MenuItem.new(
  name: "Bruschette con peperoni ",
  description: "Crispy ciabatta, spread with feta cheese, covered with roasted peppers and dill.",
  spiciness: "0",
  cooking_time: "10",
  price_cents: "650",
  menu_item_type: "starter",
  vegetarian: true,
  vegan: true
)
bruschette_salad.photos.attach(io: bruschette, filename: "bruschette.png", content_type: "image/png")
bruschette_salad.save
puts "I just created menu item nr #{bruschette_salad.id}"

vegetable_s = URI.open("https://thumb.tildacdn.com/tild3662-3336-4464-b238-616333643164/-/format/webp/-.jpg")
vegetable_soup = MenuItem.new(
  name: "Vegetable soup",
  description: "Grandma prepares different soups every day, but her favorite is the vegetable soup",
  spiciness: "0",
  cooking_time: "10",
  price_cents: "550",
  menu_item_type: "soup",
  vegetarian: true,
  vegan: true
)
vegetable_soup.photos.attach(io: vegetable_s, filename: "vegetable_soup.png", content_type: "image/png")
vegetable_soup.save
puts "I just created menu item nr #{vegetable_soup.id}"

chicken_s = URI.open("https://thumb.tildacdn.com/tild6331-3933-4732-b061-326261373538/-/format/webp/photo.jpg")
chicken_soup = MenuItem.new(
  name: "Chicken soup",
  description: "Great homemade chicken soup to warm you up.",
  spiciness: "0",
  cooking_time: "10",
  price_cents: "550",
  menu_item_type: "soup"
)
chicken_soup.photos.attach(io: chicken_s, filename: "chicken_soup.png", content_type: "image/png")
chicken_soup.save
puts "I just created menu item nr #{chicken_soup.id}"

salmon_s = URI.open("https://thumb.tildacdn.com/tild6134-6635-4539-a437-363439613639/-/format/webp/photo.jpg")
salmon_soup = MenuItem.new(
  name: "Salmon soup",
  description: "Salmon soup, with a velvety taste, prepared with vegetables, cheese and crunchy peanuts.",
  spiciness: "0",
  cooking_time: "10",
  price_cents: "550",
  menu_item_type: "soup",
  signature_dish: true
)
salmon_soup.photos.attach(io: salmon_s, filename: "salmon_soup.png", content_type: "image/png")
salmon_soup.save
puts "I just created menu item nr #{salmon_soup.id}"

tagliatelle_m = URI.open("https://thumb.tildacdn.com/tild6337-6263-4134-a431-336163313666/-/format/webp/-.jpg")
tagliatelle_dish = MenuItem.new(
  name: "Mushroom tagliatelle",
  description: "The delicious tagliatelle, cooked in a fine sauce of fresh champignons, smoked meat and whipped cream. Served with Grana Padano cheese.",
  spiciness: "0",
  cooking_time: "12",
  price_cents: "950",
  menu_item_type: "main dish"
)
tagliatelle_dish.photos.attach(io: tagliatelle_m, filename: "tagliatelle.png", content_type: "image/png")
tagliatelle_dish.save
puts "I just created menu item nr #{tagliatelle_dish.id}"

garganelli = URI.open("https://thumb.tildacdn.com/tild3034-6638-4365-a162-326364333363/-/format/webp/-4-.jpg")
pasta_garganelli = MenuItem.new(
  name: "Garganelli 4 formaggio",
  description: "Garganelli cooked in a fine sauce of four types of cheese: Grana Padano, Dor Blue, Emmental, Mozzarella.",
  spiciness: "0",
  cooking_time: "15",
  price_cents: "950",
  menu_item_type: "main dish",
  vegetarian: true
)
pasta_garganelli.photos.attach(io: garganelli, filename: "pasta_garganelli.png", content_type: "image/png")
pasta_garganelli.save
puts "I just created menu item nr #{pasta_garganelli.id}"

bolognese = URI.open("https://thumb.tildacdn.com/tild3562-6136-4136-a430-623930643932/-/format/webp/photo.jpg")
pasta_bolognese = MenuItem.new(
  name: "Spaghetti bolognese",
  description: "Spaghetti cooked with the famous bolognese sauce. Served with grated Grana Padano cheese.",
  spiciness: "2",
  cooking_time: "15",
  price_cents: "1050",
  menu_item_type: "main dish"
)
pasta_bolognese.photos.attach(io: bolognese, filename: "pasta_bolognese.png", content_type: "image/png")
pasta_bolognese.save
puts "I just created menu item nr #{pasta_bolognese.id}"

creamy_vegetables = URI.open("https://thumb.tildacdn.com/tild6263-3935-4463-b536-616265353464/-/format/webp/photo.jpg")
vegetable_dish = MenuItem.new(
  name: "Creamy vegetables",
  description: "Light and healthy vegetable mix: bell pepper, champignon mushrooms, broccoli, green beans and onion, all bathed in fine cream sauce.",
  spiciness: "0",
  cooking_time: "15",
  price_cents: "950",
  menu_item_type: "main dish",
  vegetarian: true
)
vegetable_dish.photos.attach(io: creamy_vegetables, filename: "vegetable_dish.png", content_type: "image/png")
vegetable_dish.save
puts "I just created menu item nr #{vegetable_dish.id}"

ossobuco = URI.open("https://thumb.tildacdn.com/tild6230-3337-4134-a532-623536666435/-/format/webp/photo.jpg")
ossobuco_dish = MenuItem.new(
  name: "Ossobuco a la milan",
  description: "Ossobuco is a specialty of Lombard cuisine of cross-cut veal shanks braised with vegetables, white wine and broth.",
  spiciness: "0",
  cooking_time: "35",
  price_cents: "1550",
  menu_item_type: "main dish",
  signature_dish: true
)
ossobuco_dish.photos.attach(io: ossobuco, filename: "ossobuco_dish.png", content_type: "image/png")
ossobuco_dish.save
puts "I just created menu item nr #{ossobuco_dish.id}"

lingua = URI.open("https://thumb.tildacdn.com/tild6366-6362-4536-b832-626537343232/-/format/webp/photo.jpg")
lingua_dish = MenuItem.new(
  name: "Lingua di vitello",
  description: "The finest beef tongue, served in a delicate cream sauce and Grana Padano cheese.",
  spiciness: "0",
  cooking_time: "20",
  price_cents: "1450",
  menu_item_type: "main dish",
  signature_dish: true
)
lingua_dish.photos.attach(io: lingua, filename: "lingua_dish.png", content_type: "image/png")
lingua_dish.save
puts "I just created menu item nr #{lingua_dish.id}"

pork = URI.open("https://thumb.tildacdn.com/tild6333-3038-4739-b135-633238633865/-/format/webp/photo.jpg")
pork_dish = MenuItem.new(
  name: "Cheese pork chops",
  description: "Tender pork meat, grilled with the softest cheese. It is servred together with broccoli.",
  spiciness: "0",
  cooking_time: "30",
  price_cents: "1550",
  menu_item_type: "main dish"
)
pork_dish.photos.attach(io: pork, filename: "pork_dish.png", content_type: "image/png")
pork_dish.save
puts "I just created menu item nr #{pork_dish.id}"

salmon = URI.open("https://thumb.tildacdn.com/tild3733-3937-4564-b333-663561613065/-/format/webp/photo.jpg")
salmon_dish = MenuItem.new(
  name: "Grilled salmon",
  description: "The finest salmon fillet, grilled with a caramelized crust. It is served with the delicious caponata.",
  spiciness: "0",
  cooking_time: "20",
  price_cents: "1550",
  menu_item_type: "main dish"
)
salmon_dish.photos.attach(io: salmon, filename: "salmon_dish.png", content_type: "image/png")
salmon_dish.save
puts "I just created menu item nr #{salmon_dish.id}"

broccoli = URI.open("https://thumb.tildacdn.com/tild6339-6639-4666-b466-346335323865/-/format/webp/photo.jpg")
broccoli_dish = MenuItem.new(
  name: "Creamy broccoli",
  description: "Delicious broccoli with creamy sauce.",
  spiciness: "0",
  cooking_time: "10",
  price_cents: "750",
  menu_item_type: "side",
  vegetarian: true
)
broccoli_dish.photos.attach(io: broccoli, filename: "broccoli_dish.png", content_type: "image/png")
broccoli_dish.save
puts "I just created menu item nr #{broccoli_dish.id}"

chickpea = URI.open("https://thumb.tildacdn.com/tild6163-3864-4432-a636-633264353762/-/format/webp/photo.jpg")
chickpea_dish = MenuItem.new(
  name: "Baked chickpeas",
  description: "Chickpeas cooked with love in a delicious tomato sauce.",
  spiciness: "2",
  cooking_time: "7",
  price_cents: "650",
  menu_item_type: "side",
  vegetarian: true
)
chickpea_dish.photos.attach(io: chickpea, filename: "chickpea_dish.png", content_type: "image/png")
chickpea_dish.save
puts "I just created menu item nr #{chickpea_dish.id}"

brownie = URI.open("https://thumb.tildacdn.com/tild3337-3037-4662-b461-323166396561/-/format/webp/28.jpg")
brownie_dish = MenuItem.new(
  name: "Chocolate brownies",
  description: "Delicious brownie served with melted chocolate sauce.",
  spiciness: "0",
  cooking_time: "10",
  price_cents: "650",
  menu_item_type: "dessert",
  vegetarian: true
)
brownie_dish.photos.attach(io: brownie, filename: "brownie_dish.png", content_type: "image/png")
brownie_dish.save
puts "I just created menu item nr #{brownie_dish.id}"

tiramisu = URI.open("https://thumb.tildacdn.com/tild6165-6535-4739-b539-343035636430/-/format/webp/photo.jpg")
tiramisu_dish = MenuItem.new(
  name: "Tiramisu",
  description: "Smooth Italian dessert, with Savoiardi biscuits soaked in aromatic coffee, combined with the finest mascarpone cream and dusted with cocoa.",
  spiciness: "0",
  cooking_time: "7",
  price_cents: "650",
  menu_item_type: "dessert",
  signature_dish: true
)
tiramisu_dish.photos.attach(io: tiramisu, filename: "tiramisu_dish.png", content_type: "image/png")
tiramisu_dish.save
puts "I just created menu item nr #{tiramisu_dish.id}"

gelato = URI.open("https://thumb.tildacdn.com/tild3466-3562-4137-b535-613262326161/-/format/webp/photo.jpg")
gelato_dish = MenuItem.new(
  name: "Gelato",
  description: "Classic bourbon vanilla ice creame",
  spiciness: "0",
  cooking_time: "5",
  price_cents: "550",
  menu_item_type: "dessert",
  vegetarian: true
)
gelato_dish.photos.attach(io: gelato, filename: "gelato_dish.png", content_type: "image/png")
gelato_dish.save
puts "I just created menu item nr #{gelato_dish.id}"

puts "Creating an user admin to log in"
admin = User.new(
  email: "admin@restaurant.com",
  password: "Lewagon2022",
  restaurant_user: true
)
admin.save!
puts "I just created an admin user nr #{admin.id}"
puts "Use admin@restaurant.com and 123456 to log in"

puts "Creating a guest account to log in"
user2 = User.new(
  email: "ana@mail.com",
  password: "Lewagon2022",
  restaurant_user: false
)
user2.save!
puts "I just created a guest user nr #{user2.id}"
puts "Use ana@mail.com and 123456 to log in as guest"

puts "Creating a guest account to log in"
user1 = User.new(
  email: "bob@mail.com",
  password: "Lewagon2022",
  restaurant_user: false
)
user1.save!
puts "I just created a guest user nr #{user1.id}"
puts "Use bob@mail.com and 123456 to log in as guest"

puts "Creating a finished order"
new_order = Order.create(user: user2, status: 3, table_number: 1)
order_item = OrderItem.create(order: new_order, menu_item: pasta_bolognese, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: tagliatelle_dish, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: tiramisu_dish, quantity: 2)

puts "Creating a finished order"
new_order = Order.create(user: user2, status: 3, table_number: 2)
order_item = OrderItem.create(order: new_order, menu_item: vegetable_soup, quantity: 1)

puts "Creating a finished order"
new_order = Order.create(user: user1, status: 3, table_number: 5)
order_item = OrderItem.create(order: new_order, menu_item: pasta_garganelli, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: gelato_dish, quantity: 1)

puts "Creating a finished order"
new_order = Order.create(user: user1, status: 3, table_number: 6)
order_item = OrderItem.create(order: new_order, menu_item: salmon_dish, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: broccoli_dish, quantity: 2)
order_item = OrderItem.create(order: new_order, menu_item: chickpea_dish, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: lingua_dish, quantity: 2)

puts "Creating a finished order"
new_order = Order.create(user: user1, status: 3, table_number: 2)
order_item = OrderItem.create(order: new_order, menu_item: cotidiana_salad, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: melanzane_salad, quantity: 1)

puts "Creating a finished order"
new_order = Order.create(user: user2, status: 3, table_number: 4)
order_item = OrderItem.create(order: new_order, menu_item: melanzane_salad, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: carpaccio_salad, quantity: 1)

puts "Creating a finished order"
new_order = Order.create(user: user2, status: 3, table_number: 3)
order_item = OrderItem.create(order: new_order, menu_item: pasta_garganelli, quantity: 1)

puts "Creating a finished order"
new_order = Order.create(user: user1, status: 3, table_number: 6)
order_item = OrderItem.create(order: new_order, menu_item: pasta_bolognese, quantity: 1)
puts "Creating a finished order"
new_order = Order.create(user: user2, status: 3, table_number: 1)
order_item = OrderItem.create(order: new_order, menu_item: pasta_bolognese, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: vegetable_soup, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: chicken_soup, quantity: 2)

puts "Creating a finished order"
new_order = Order.create(user: user2, status: 3, table_number: 2)
order_item = OrderItem.create(order: new_order, menu_item: vegetable_soup, quantity: 1)

puts "Creating a finished order"
new_order = Order.create(user: user1, status: 3, table_number: 5)
order_item = OrderItem.create(order: new_order, menu_item: pasta_garganelli, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: salmon_soup, quantity: 1)

puts "Creating a finished order"
new_order = Order.create(user: user1, status: 3, table_number: 6)
order_item = OrderItem.create(order: new_order, menu_item: salmon_dish, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: broccoli_dish, quantity: 2)
order_item = OrderItem.create(order: new_order, menu_item: chickpea_dish, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: lingua_dish, quantity: 2)

puts "Creating a finished order"
new_order = Order.create(user: user1, status: 3, table_number: 2)
order_item = OrderItem.create(order: new_order, menu_item: cotidiana_salad, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: gelato_dish, quantity: 1)

puts "Creating a finished order"
new_order = Order.create(user: user2, status: 3, table_number: 4)
order_item = OrderItem.create(order: new_order, menu_item: melanzane_salad, quantity: 1)
order_item = OrderItem.create(order: new_order, menu_item: ossobuco_dish, quantity: 1)

puts "Creating a finished order"
new_order = Order.create(user: user2, status: 3, table_number: 3)
order_item = OrderItem.create(order: new_order, menu_item: ossobuco_dish, quantity: 1)

puts "Creating a finished order"
new_order = Order.create(user: user1, status: 3, table_number: 6)
order_item = OrderItem.create(order: new_order, menu_item: gelato_dish, quantity: 1)

puts "Seeding completed. You now have #{Ingredient.count} ingredients and #{MenuItem.count} items"
puts "You also have #{User.count} users, that placed #{Order.count} orders with #{OrderItem.count} items"
