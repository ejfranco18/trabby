namespace :foursquare do
  desc 'Cache all foursquare categories in the DB'
  task cache_places: :environment do
    City.where(name: %w[Madrid Paris]).each do |city|
      puts "-----------------------------------"
      puts "GETING PLACES FOR #{city.name}"
      puts "-----------------------------------"

      Category.find_each do |category|
        puts "Creating places for #{category.category}"

        create_places(city, category, 8)
      end
    end
  end

  def create_places(city, category, limit)
    version = 20190425
    category_id = category.foursquare_category_id
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

      Place.where(link: id).first_or_create do |place|
        place.name = name
        place.address = address
        place.images = get_icon(item)
        place.latitude = lat
        place.longitude = lng
        place.city = city
        place.category = category
      end
      # venue_id = item.dig(:venue, :id)
      # url2 = "https://api.foursquare.com/v2/venues/#{venue_id}?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{@v}"
      # json = RequestCache.get(url2)

      # venue = json.dig(:response, :venue)
      # name = venue[:name]
      # address = venue.dig(:location, :address)
      # image = "#{venue.dig(:photos, :groups).first[:items].first[:prefix]}720x434#{venue.dig(:photos, :groups).first[:items].first[:suffix]}"
      # rating = venue[:rating]
      # description = []
      # venue.dig(:listed, :groups)[0][:items].each do |x|
      #   if x[:description].present?
      #     description << x[:description]
      #   end
      # end
      # if venue.dig(:popular, :timeframes).present?
      #   opening_hours = venue.dig(:popular, :timeframes).first
      # else
      #   opening_hours = ""
      # end
      # latitude = venue.dig(:location, :labeledLatLngs).first[:lat]
      # longitude = venue.dig(:location, :labeledLatLngs).first[:lng]
      # categoryid = Category.find_by(foursquare_category_id: category_id).id
      # new_place = Place.new(name: name, address: address, images: image, opening_hours: opening_hours, latitude: latitude, longitude: longitude, city_id: city_id, category_id: categoryid, rating: rating, description: description)
      # new_place.save!
    end
  end

  def get_icon(item)
    category = item.dig(:venue, :categories).first

    "#{category.dig(:icon, :prefix)}64.png"
  end
end
