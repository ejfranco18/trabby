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



categories = [['Exhibit', '56aa371be4b08b9a8d573532'], ['Museum', '4bf58dd8d48988d181941735'], ['Performing Arts', '4bf58dd8d48988d1f2931735'], ['Zoo', '4bf58dd8d48988d17b941735'], ['Bakery', '4bf58dd8d48988d16a941735'], ['Bistro', '52e81612bcbc57f1066b79f1'], ['Restaurant', '4bf58dd8d48988d1c4941735'], ['Spanish Restaurant', '4bf58dd8d48988d150941735'], ['Bar', '4bf58dd8d48988d116941735'], ['Night Club', '4bf58dd8d48988d11f941735'], ['Palace', '52e81612bcbc57f1066b7a14'], ['Park', '4bf58dd8d48988d163941735']]
categories.each do |category|
  Category.create!(category: category[0], foursquare_category_id: category[1])
end
