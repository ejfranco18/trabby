class ActivityGenerator
  def initialize(plan)
    @plan = plan
  end

  # def activity_ranking
  # end

  def create_activities
    # ......
    v = "20190425"
    location = City.find(@plan.city_id).name
    duration = (@plan.end_date - @plan.start_date).to_i
    # get number of activities for corresponding number of dates
    # search for activities with each search item
    # prioritize them
    # select them
    # attach them to each day
    activities_timeslot_1 = [['Bakery', '4bf58dd8d48988d16a941735'], ['Bistro', '52e81612bcbc57f1066b79f1']]
    activities_timeslot_2 = [['Exhibit', '56aa371be4b08b9a8d573532'], ['Museum', '4bf58dd8d48988d181941735'], ['Zoo', '4bf58dd8d48988d17b941735']]
    activities_timeslot_3 = [['Restaurant', '4bf58dd8d48988d1c4941735'], ['Spanish Restaurant', '4bf58dd8d48988d150941735']]
    activities_timeslot_4 = [['Exhibit', '56aa371be4b08b9a8d573532'], ['Museum', '4bf58dd8d48988d181941735'], ['Palace', '52e81612bcbc57f1066b7a14']]
    activities_timeslot_5 = [['Park', '4bf58dd8d48988d163941735']]
    activities_timeslot_6 = [['Restaurant', '4bf58dd8d48988d1c4941735'], ['Spanish Restaurant', '4bf58dd8d48988d150941735']]
    activities_timeslot_7 = [['Performing Arts', '4bf58dd8d48988d1f2931735'], ['Bar', '4bf58dd8d48988d116941735']]
    activities_timeslot_8 = [['Night Club', '4bf58dd8d48988d11f941735']]

    category_id = '52e81612bcbc57f1066b7a14'
    if Place.find_by(category_id: 11, city_id: 1).present?
      create_places(category_id)
    else

    end

    # depending on
    # number of days
    # preferences
    # weather







    ranked_places = Place.sort_by { |place| place.rating }
    category_instance = Category.find_by(foursquare_category_id: category_id)
  end

  def create_places(category_id)
    city_id = @plan.city_id
    url = "https://api.foursquare.com/v2/venues/explore?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{v}&near=#{location}&radius=5000&limit=8&categoryId=#{category_id}"
        items = []
    json = RequestCache.get(url)
    groups = json.dig(:response, :groups)
    items = groups.first[:items]
    items.each do |item|
      venue_id = item.dig(:venue, :id)
      url2 = "https://api.foursquare.com/v2/venues/#{venue_id}?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{v}"
      json = RequestCache.get(url2)

      venue = json.dig(:response, :venue)
      name = venue[:name]
      address = venue.dig(:location, :address)
      image = "#{venue.dig(:photos, :groups).first[:items].first[:prefix]}720x434#{venue.dig(:photos, :groups).first[:items].first[:suffix]}"
      rating = venue[:rating]
      description = []
      venue.dig(:listed, :groups)[0][:items].each do |x|
        if x[:description].present?
          description << x[:description]
        end
      end
      if venue.dig(:popular, :timeframes).present?
        opening_hours = venue.dig(:popular, :timeframes).first
      else
        opening_hours = ""
      end
      latitude = venue.dig(:location, :labeledLatLngs).first[:lat]
      longitude = venue.dig(:location, :labeledLatLngs).first[:lng]
      categoryid = Category.find_by(foursquare_category_id: category_id).id
      new_place = Place.new(name: name, address: address, images: image, opening_hours: opening_hours, latitude: latitude, longitude: longitude, city_id: city_id, category_id: categoryid, rating: rating, description: description)
      new_place.save!
  end
end
