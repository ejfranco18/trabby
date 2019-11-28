class Foursquare
  def self.create_places(city:, category:, limit:)
    version = 20190425
    category_id = category.foursquare_id
    url = "https://api.foursquare.com/v2/venues/explore?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{version}&near=#{city}&sortByPopularity=true&limit=#{limit}&categoryId=#{category_id}"

    city = City.where(name: city).first_or_create! unless city.is_a?(City)

    json = RequestCache.get(url)
    groups = json.dig(:response, :groups)
    items = groups.first[:items] || []

    items.each do |item|
      id = item.dig(:venue, :id)
      name = item.dig(:venue, :name)
      lat = item.dig(:venue, :location, :lat)
      lng = item.dig(:venue, :location, :lng)
      address = item.dig(:venue, :location, :address)

      Place.where(foursquare_id: id).first_or_create! do |place|
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
