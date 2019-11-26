# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Place.destroy_all
Category.destroy_all
Activity.destroy_all
Plan.destroy_all
City.destroy_all
User.destroy_all



puts "About to create users"
puts ""
user1 = User.create!(first_name: "Hervé", last_name: "Lao", email: "laoherve@outlook.com", password: "123456", image: "https://unsplash.com/photos/WBGjg0DsO_g")
user2 = User.create!(first_name: "Javier", last_name: "Franco", email: "francojavier@gmail.com", password: "123456", image: "https://unsplash.com/photos/WBGjg0DsO_g")
user3 = User.create!(first_name: "Niklas", last_name: "Wagener", email: "wagenerniklas@gmail.com", password: "123456", image: "https://unsplash.com/photos/WBGjg0DsO_g")
user4 = User.create!(first_name: "Maja", last_name: "Polanc", email: "polancmaja@gmail.com", password: "123456", image: "https://unsplash.com/photos/WBGjg0DsO_g")
puts "Users created!!!!!!!!!!"
puts ""
puts ""
puts ""

puts "About to create cities"
puts ""
city_paris = City.create!(name:"Paris", country:"France", continent: "Europe", image: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2104&q=80")
city_madrid = City.create!(name:"Madrid", country:"Spain", continent: "Europe", image: "https://images.unsplash.com/photo-1543783207-ec64e4d95325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80")
city_stockholm = City.create!(name:"Stockholm", country:"Sweden", continent: "Europe", image: "https://images.unsplash.com/photo-1509356843151-3e7d96241e11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80")
city_oslo = City.create!(name:"Oslo", country:"Norway", continent: "Europe", image: "https://images.unsplash.com/photo-1433757741270-94a3bcadc2f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3369&q=80")
city_amsterdam = City.create!(name:"Amsterdam", country:"Netherlands", continent: "Europe", image: "https://images.unsplash.com/photo-1512470876302-972faa2aa9a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
city_berlin = City.create!(name:"Berlin", country:"Germany", continent: "Europe", image: "https://images.unsplash.com/photo-1528728329032-2972f65dfb3f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
city_ljubljana = City.create!(name:"Ljubljana", country:"Slovenia", continent: "Europe", image: "https://images.unsplash.com/photo-1560552515-c526e4ee969a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2102&q=80")
city_newyork = City.create!(name:"New York", country:"United States", continent: "North America", image: "https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80")
city_seoul = City.create!(name:"Seoul", country:"South Korea", continent: "Asia", image: "https://images.unsplash.com/photo-1536315238512-4c8cebdaaf93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3156&q=80")
city_brussels = City.create!(name:"Brussels", country:"Belgium", continent: "Europe", image: "https://images.unsplash.com/photo-1559113202-c916b8e44373?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
puts "Cities created!!!!!!!!"
puts ""
puts ""
puts ""

puts "About to create categories"
puts ""
category1 = Category.create(category:'Exhibit',foursquare_category_id: '56aa371be4b08b9a8d573532')
category2 = Category.create(category:'Museum',foursquare_category_id: '4bf58dd8d48988d181941735')
category3 = Category.create(category:'Performing Arts',foursquare_category_id: '4bf58dd8d48988d1f2931735')
category4 = Category.create(category:'Zoo',foursquare_category_id: '4bf58dd8d48988d17b941735')
category5 = Category.create(category:'Bakery',foursquare_category_id: '4bf58dd8d48988d16a941735')
category6 = Category.create(category:'Bistro',foursquare_category_id: '52e81612bcbc57f1066b79f1')
category7 = Category.create(category:'Restaurant',foursquare_category_id: '4bf58dd8d48988d1c4941735')
category8 = Category.create(category:'Spanish Restaurant',foursquare_category_id: '4bf58dd8d48988d150941735')
category9 = Category.create(category:'Bar',foursquare_category_id: '4bf58dd8d48988d116941735')
category10 = Category.create(category:'Night Club',foursquare_category_id: '4bf58dd8d48988d11f941735')
category11 = Category.create(category:'Palace',foursquare_category_id: '52e81612bcbc57f1066b7a14')
category12 = Category.create(category:'Park',foursquare_category_id: '4bf58dd8d48988d163941735')
puts "Cities created!!!!!!!!!!!!"
puts ""
puts ""
puts ""

puts "About to create plans"
puts ""

plan1 = Plan.create!(start_date: "2019-12-01", end_date: "2019-12-03", user_id: user1.id, city_id: city_madrid.id, search_items: [1,2,3])
plan2 = Plan.create!(start_date: "2019-12-02", end_date: "2019-12-05", user_id: user2.id, city_id: city_madrid.id, search_items: [1,2,3])
plan3 = Plan.create!(start_date: "2019-12-03", end_date: "2019-12-06", user_id: user3.id, city_id: city_madrid.id, search_items: [1,2,3])
plan4 = Plan.create!(start_date: "2019-12-04", end_date: "2019-12-07", user_id: user4.id, city_id: city_madrid.id, search_items: [1,2,3])
puts "Plans created!!!!!!!!!!!!!!!"
puts ""
puts ""
puts ""

puts "About to create places"
puts ""

place1 = Place.create!(
  name: "Levadura Madre",
  address: "C. San Joaquín, 4",
  images: "https://fastly.4sqi.net/img/general/720x434/227_GM4YoO7O4p_xUu9R3tRQLvIREkuIKN8x3I38hlbMXlI.jpg",
  description: [],
  opening_hours: "{\"days\"=>\"Today\", \"includesToday\"=>true, \"open\"=>[{\"renderedTime\"=>\"8:00 AM–8:00 PM\"}], \"segments\"=>[]}",
  latitude: -29.9184877,
  longitude: -71.242809098302,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category1.id,
  rating: 8.7)
  place2 = Place.create!(
  name: "celicioso",
  address: "Calle del Barquillo 19",
  images: "https://fastly.4sqi.net/img/general/720x434/217386639_PZvKGFGEnoLpot9zSIoMyeF1miK_nhAN_lrP8UFKuRs.jpg",
  description:
   ["Esta Lista incluye la mayoria de lugares que he visitado, tambien incluye sitios que me faltan por visitar que creo que son de interes. Entre ellos Lugares publicos, plaza, restaurantes, mercados etc"],
  opening_hours:
   "{\"days\"=>\"Today\", \"includesToday\"=>true, \"open\"=>[{\"renderedTime\"=>\"10:00 AM–3:00 PM\"}, {\"renderedTime\"=>\"5:00 PM–10:00 PM\"}], \"segments\"=>[]}",
  latitude: 40.4220636,
  longitude: -3.6956952,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category2.id,
  rating: 8.7)
place3 = Place.create!(
  name: "El Horno de San Onofre",
  address: "C. San Onofre, 3",
  images: "https://fastly.4sqi.lannet/img/general/720x434/npPk8PA4wzUr-51InOyqhfLCBaT7AMMdtjuw7y7HjFo.jpg",
  description:
   ["From a \"Madrileña\" to the rest of the world ;)\n\nYou can also follow The best shopping @Madrid to discover cool shops around the city.\nhttps://es.foursquare.com/martasmth/list/the-best-shopping--madrid"],
  opening_hours:
   "{\"days\"=>\"Today\", \"includesToday\"=>true, \"open\"=>[{\"renderedTime\"=>\"9:00 AM–11:00 AM\"}, {\"renderedTime\"=>\"2:00 PM–10:00 PM\"}], \"segments\"=>[]}",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category2.id,
  rating: 8.7)
place4 = Place.create!(
  name: "El Horno de San Onofre",
  address: "C. San Onofre, 3",
  images: "https://fastly.4sqi.lannet/img/general/720x434/npPk8PA4wzUr-51InOyqhfLCBaT7AMMdtjuw7y7HjFo.jpg",
  description:
   ["From a \"Madrileña\" to the rest of the world ;)\n\nYou can also follow The best shopping @Madrid to discover cool shops around the city.\nhttps://es.foursquare.com/martasmth/list/the-best-shopping--madrid"],
  opening_hours:
   "{\"days\"=>\"Today\", \"includesToday\"=>true, \"open\"=>[{\"renderedTime\"=>\"9:00 AM–11:00 AM\"}, {\"renderedTime\"=>\"2:00 PM–10:00 PM\"}], \"segments\"=>[]}",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category2.id,
  rating: 8.7)
place5 = Place.create!(
  name: "XXXX5",
  address: "XXXX5",
  images: "XXXX5",
  description: "XXXX5",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category3.id,
  rating: 8.7)
place6 = Place.create!(
  name: "XXXX6",
  address: "XXXX6",
  images: "XXXX6",
  description: "XXXX6",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category4.id,
  rating: 8.7)
place7 = Place.create!(
  name: "XXXX7",
  address: "XXXX7",
  images: "XXXX7",
  description: "XXXX7",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category5.id,
  rating: 8.7)
place8 = Place.create!(
  name: "XXXX8",
  address: "XXXX8",
  images: "XXXX8",
  description: "XXXX8",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category1.id,
  rating: 8.7)
place9 = Place.create!(
  name: "XXXX9",
  address: "XXXX9",
  images: "XXXX9",
  description: "XXXX9",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category5.id,
  rating: 8.7)
place10 = Place.create!(
  name: "XXX10",
  address: "XXX10",
  images: "XXX10",
  description: "XXX10",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category6.id,
  rating: 8.7)
place11 = Place.create!(
  name: "XXX11",
  address: "XXX11",
  images: "XXX11",
  description: "XXX11",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category6.id,
  rating: 8.7)
place12 = Place.create!(
  name: "XXX12",
  address: "XXX12",
  images: "XXX12",
  description: "XXX12",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category6.id,
  rating: 8.7)
place13 = Place.create!(
  name: "XXX13",
  address: "XXX13",
  images: "XXX13",
  description: "XXX13",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category7.id,
  rating: 8.7)
place14 = Place.create!(
  name: "XXX14",
  address: "XXX14",
  images: "XXX14",
  description: "XXX14",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category8.id,
  rating: 8.7)
place15 = Place.create!(
  name: "XXX15",
  address: "XXX15",
  images: "XXX15",
  description: "XXX15",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category7.id,
  rating: 8.7)
place16 = Place.create!(
  name: "XXX16",
  address: "XXX16",
  images: "XXX16",
  description: "XXX16",
  opening_hours: "9:00 AM–11:00 AM & 2:00 PM–10:00 PM",
  latitude: 38.8707875,
  longitude: -6.96836396175555,
  duration: nil,
  link: nil,
  type: nil,
  city_id: city_madrid.id,
  category_id: category8.id,
  rating: 8.7)
puts "Places created!!!!!!!!!!!!!!!"
puts ""
puts "Places created!!!!!!!!!!!"
puts ""
puts "About to create activities"
puts ""

activity1 = Activity.create!(plan_id: plan1.id, place_id: place1.id, slot: "1", date: "2019-11-30")
activity2 = Activity.create!(plan_id: plan1.id, place_id: place2.id, slot: "2", date: "2019-11-30")
activity3 = Activity.create!(plan_id: plan1.id, place_id: place3.id, slot: "3", date: "2019-11-30")
activity4 = Activity.create!(plan_id: plan1.id, place_id: place4.id, slot: "4", date: "2019-11-30")
activity5 = Activity.create!(plan_id: plan1.id, place_id: place5.id, slot: "5", date: "2019-11-30")
activity6 = Activity.create!(plan_id: plan1.id, place_id: place6.id, slot: "6", date: "2019-11-30")
activity7 = Activity.create!(plan_id: plan1.id, place_id: place7.id, slot: "7", date: "2019-11-30")
activity8 = Activity.create!(plan_id: plan1.id, place_id: place8.id, slot: "8", date: "2019-11-30")
activity9 = Activity.create!(plan_id: plan1.id, place_id: place9.id, slot: "1", date: "2019-12-01")
activity10 = Activity.create!(plan_id: plan1.id, place_id: place10.id, slot: "2", date: "2019-12-01")
activity11 = Activity.create!(plan_id: plan1.id, place_id: place11.id, slot: "3", date: "2019-12-01")
activity12 = Activity.create!(plan_id: plan1.id, place_id: place12.id, slot: "4", date: "2019-12-01")
activity13 = Activity.create!(plan_id: plan1.id, place_id: place13.id, slot: "5", date: "2019-12-01")
activity14 = Activity.create!(plan_id: plan1.id, place_id: place14.id, slot: "6", date: "2019-12-01")
activity15 = Activity.create!(plan_id: plan1.id, place_id: place15.id, slot: "7", date: "2019-12-01")
activity16 = Activity.create!(plan_id: plan1.id, place_id: place16.id, slot: "8", date: "2019-12-01")

puts "Activities created!!!!!!!!!!"
puts ""
puts ""
puts ""
