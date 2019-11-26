User.destroy_all
City.destroy_all
Category.destroy_all
Place.destroy_all
Plan.destroy_all

puts "About to create users"
puts ""
User.create!(first_name: "Hervé", last_name: "Lao", email: "laoherve@outlook.com", password: "123456", image: "https://unsplash.com/photos/WBGjg0DsO_g")
User.create!(first_name: "Javier", last_name: "Franco", email: "francojavier@gmail.com", password: "123456", image: "https://unsplash.com/photos/WBGjg0DsO_g")
User.create!(first_name: "Niklas", last_name: "Wagener", email: "wagenerniklas@gmail.com", password: "123456", image: "https://unsplash.com/photos/WBGjg0DsO_g")
User.create!(first_name: "Maja", last_name: "Polanc", email: "polancmaja@gmail.com", password: "123456", image: "https://unsplash.com/photos/WBGjg0DsO_g")
puts "Users created!!!!!!!!!!"
puts ""
puts ""
puts ""

puts "About to create cities"
puts ""
City.create!(name: "Paris", country:"France", continent: "Europe", image: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2104&q=80")
City.create!(name: "Madrid", country:"Spain", continent: "Europe", image: "https://images.unsplash.com/photo-1543783207-ec64e4d95325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80")
City.create!(name: "Stockholm", country:"Sweden", continent: "Europe", image: "https://images.unsplash.com/photo-1509356843151-3e7d96241e11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80")
City.create!(name: "Oslo", country:"Norway", continent: "Europe", image: "https://images.unsplash.com/photo-1433757741270-94a3bcadc2f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3369&q=80")
City.create!(name: "Amsterdam", country:"Netherlands", continent: "Europe", image: "https://images.unsplash.com/photo-1512470876302-972faa2aa9a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
City.create!(name: "Berlin", country:"Germany", continent: "Europe", image: "https://images.unsplash.com/photo-1528728329032-2972f65dfb3f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
City.create!(name: "Ljubljana", country:"Slovenia", continent: "Europe", image: "https://images.unsplash.com/photo-1560552515-c526e4ee969a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2102&q=80")
City.create!(name: "New York", country:"United States", continent: "North America", image: "https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80")
City.create!(name: "Seoul", country:"South Korea", continent: "Asia", image: "https://images.unsplash.com/photo-1536315238512-4c8cebdaaf93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3156&q=80")
City.create!(name: "Brussels", country:"Belgium", continent: "Europe", image: "https://images.unsplash.com/photo-1559113202-c916b8e44373?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
City.create!(name: "default", country:"default", continent: "default", image: "https://images.unsplash.com/Ys-DBJeX0nE.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
puts "Cities created!!!!!!!!!!"
puts ""
puts ""
puts ""


puts "About to create categories"
puts ""
Category.create(name: 'Exhibit', foursquare_id: '56aa371be4b08b9a8d573532', icon_url: 'https://ss3.4sqi.net/img/categories_v2/arts_entertainment/default_64.png')
Category.create(name: 'Museum', foursquare_id: '4bf58dd8d48988d181941735', icon_url: 'https://ss3.4sqi.net/img/categories_v2/arts_entertainment/museum_64.png')
Category.create(name: 'Performing Arts', foursquare_id: '4bf58dd8d48988d1f2931735', icon_url: 'https://ss3.4sqi.net/img/categories_v2/arts_entertainment/performingarts_64.png')
Category.create(name: 'Zoo', foursquare_id: '4bf58dd8d48988d17b941735', icon_url: 'https://ss3.4sqi.net/img/categories_v2/arts_entertainment/zoo_64.pn')
Category.create(name: 'Bakery', foursquare_id: '4bf58dd8d48988d16a941735', icon_url: 'https://ss3.4sqi.net/img/categories_v2/food/bakery_64.png')
Category.create(name: 'Bistro', foursquare_id: '52e81612bcbc57f1066b79f1', icon_url: 'https://ss3.4sqi.net/img/categories_v2/food/default_64.png')
Category.create(name: 'Restaurant', foursquare_id: '4bf58dd8d48988d1c4941735', icon_url: 'https://ss3.4sqi.net/img/categories_v2/food/default_64.png')
Category.create(name: 'Spanish Restaurant', foursquare_id: '4bf58dd8d48988d150941735', icon_url: 'https://ss3.4sqi.net/img/categories_v2/food/spanish_64.png')
Category.create(name: 'Bar', foursquare_id: '4bf58dd8d48988d116941735', icon_url: 'https://ss3.4sqi.net/img/categories_v2/nightlife/pub_64.png')
Category.create(name: 'Night Club', foursquare_id: '4bf58dd8d48988d11f941735', icon_url: 'https://ss3.4sqi.net/img/categories_v2/nightlife/nightclub_64.png')
Category.create(name: 'Palace', foursquare_id: '52e81612bcbc57f1066b7a14', icon_url: 'https://ss3.4sqi.net/img/categories_v2/parks_outdoors/default_64.png')
Category.create(name: 'Park', foursquare_id: '4bf58dd8d48988d163941735', icon_url: 'https://ss3.4sqi.net/img/categories_v2/parks_outdoors/park_64.png')
puts "Categories created!!!!!!!!!!"
puts ""
puts ""
puts ""
