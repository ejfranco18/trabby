# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Activity.destroy_all
Plan.destroy_all
City.destroy_all
Price.destroy_all
Category.destroy_all
Place.destroy_all

# user1 = User.create(first_name: "Charles", last_name: "Owns", email: "charles@gmail.com", password: "123456", image: "https://unsplash.com/photos/WBGjg0DsO_g")
# plan1 = Plan.create(start_date: "25.12.2019", end_date: "02.01.2020", user_id:8)
# city1 = City.create!(name:"Madrid", country:"Spain", continent: "Europe")
# price1 = Price.create!(value: 20, date:"10.11.2019")
# # category1 = Category.create!(category: "Museum")
# place1 = Place.create!(name: "Great Place", address: "somehwere in Madrid", images:"https://unsplash.com/photos/WBGjg0DsO_g", description:"amazing to spend your day", opening_hours: "10 am", latitude: 40.416775, longitude: -3.703790, duration: 3, link:"", type: "", city_id: 1, price_id: 1, category_id: 1)
# activity1 = Activity.create!(start_time:"10.30", end_time:"12.30", place_id:1, plan_id:1)

# City.create!(name:"Madrid", country:"Spain", continent: "Europe", image: "https://images.unsplash.com/photo-1543783207-ec64e4d95325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80")
# City.create!(name:"Stockholm", country:"Sweden", continent: "Europe", image: "https://images.unsplash.com/photo-1509356843151-3e7d96241e11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80")
# City.create!(name:"Oslo", country:"Norway", continent: "Europe", image: "https://images.unsplash.com/photo-1433757741270-94a3bcadc2f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3369&q=80")
# City.create!(name:"Amsterdam", country:"Netherlands", continent: "Europe", image: "https://images.unsplash.com/photo-1512470876302-972faa2aa9a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
# City.create!(name:"Paris", country:"France", continent: "Europe", image: "https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2104&q=80")
# City.create!(name:"Berlin", country:"Germany", continent: "Europe", image: "https://images.unsplash.com/photo-1528728329032-2972f65dfb3f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")
# City.create!(name:"Ljubljana", country:"Slovenia", continent: "Europe", image: "https://images.unsplash.com/photo-1560552515-c526e4ee969a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2102&q=80")
# City.create!(name:"New York", country:"United States", continent: "North America", image: "https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80")
# City.create!(name:"Seoul", country:"South Korea", continent: "Asia", image: "https://images.unsplash.com/photo-1536315238512-4c8cebdaaf93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3156&q=80")
# City.create!(name:"Brussels", country:"Belgium", continent: "Europe", image: "https://images.unsplash.com/photo-1559113202-c916b8e44373?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")

categories = ['Exhibit', 'Museum', 'Performing Arts', 'Zoo', 'Bakery', 'Bistro', 'Restaurant', 'Spanish Restaurant', 'Bar', 'Night Club', 'Palace', 'Park']
categories.each do |type|
  Category.create!(category: type)
end

