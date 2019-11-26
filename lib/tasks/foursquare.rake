namespace :foursquare do
  desc 'Cache all foursquare categories in the DB'
  task cache_places: :environment do
    City.where(name: %w[Madrid Paris]).each do |city|
      puts "-----------------------------------"
      puts "GETING PLACES FOR #{city.name}"
      puts "-----------------------------------"

      Category.find_each do |category|
        puts "Creating places for #{category.name}"

        create_places(city, category, 8)
      end
    end
  end

  def create_places(city, category, limit)
    version = 20190425
    category_id = category.foursquare_id
    url = "https://api.foursquare.com/v2/venues/explore?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{version}&near=#{city.name}&radius=5000&limit=#{limit}&categoryId=#{category_id}"

    json = RequestCache.get(url)
    groups = json.dig(:response, :groups)
    items = groups.first[:items] || []

    items.each do |item|
      id = item.dig(:venue, :id)
      name = item.dig(:venue, :name)
      lat = item.dig(:venue, :location, :lat)
      lng = item.dig(:venue, :location, :lng)
      address = item.dig(:venue, :location, :address)

      puts "> #{name}"

      Place.where(foursquare_id: id).first_or_create do |place|
        place.name = name
        place.address = address
        place.latitude = lat
        place.longitude = lng
        place.city = city
        place.category = category
      end
    end
  end
end
