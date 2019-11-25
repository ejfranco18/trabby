class ActivityGenerator
  def initialize(plan)
    @plan = plan
    # @plan = Plan.last # only for testing
    @city = City.find(@plan.city_id)
    @v = "20190425"
  end

  def select_activities
    location = City.find(@plan.city_id).name
    duration = (@plan.end_date - @plan.start_date).to_i

    category_ids = @plan.categories.pluck(:foursquare_category_id)

    # get number of activities for corresponding number of dates
    # search for activities with each search item
    # prioritize them
    # select them
    # attach them to each day
    slot_1 = [
      ['Bakery', '4bf58dd8d48988d16a941735'],
      ['Bistro', '52e81612bcbc57f1066b79f1']
    ]
    slot_2 = [
      ['Exhibit', '56aa371be4b08b9a8d573532'],
      ['Museum', '4bf58dd8d48988d181941735'],
      ['Zoo', '4bf58dd8d48988d17b941735']
    ]
    slot_3 = [
      ['Restaurant', '4bf58dd8d48988d1c4941735'],
      ['Spanish Restaurant', '4bf58dd8d48988d150941735']
    ]
    slot_4 = [
      ['Exhibit', '56aa371be4b08b9a8d573532'],
      ['Museum', '4bf58dd8d48988d181941735'],
      ['Palace', '52e81612bcbc57f1066b7a14']
    ]
    slot_5 = [
      ['Park', '4bf58dd8d48988d163941735']
    ]
    slot_6 = [
      ['Restaurant', '4bf58dd8d48988d1c4941735'],
      ['Spanish Restaurant', '4bf58dd8d48988d150941735']
    ]
    slot_7 = [
      ['Performing Arts', '4bf58dd8d48988d1f2931735'],
      ['Bar', '4bf58dd8d48988d116941735']
    ]
    slot_8 = [
      ['Night Club', '4bf58dd8d48988d11f941735']
    ]

    day_slots = [slot_1, slot_2, slot_3, slot_4, slot_5, slot_6, slot_7, slot_8]

    plan_days = duration.times.map do
      categories_for_a_day(day_slots, category_ids)
    end

    count = {}
    plan_days.each do |day|
      day.each do |slot|
        count[slot.last] ||= []
        category = Category.find_by(foursquare_category_id: slot.last)


        if !Place.exists?(category: category, city_id: @plan.city_id)
          create_places(slot.last)
        end

        place = Place.where(category: category, city_id: @plan.city_id).where.not(id: count[slot.last]).first
        count[slot.last] << place
      end
    end

    plan_days.each_with_index do |day, index|
      date = @plan.start_date + index.days
      puts "Adding activities for #{date}...."

      day.each_with_index do |slot, slot_index|
        puts "Adding activity for slot #{slot_index} > #{slot}"
        place = count[slot.last].sort_by!(&:rating).shift

        @plan.activities.build(date: date, place: place, slot: slot_index)
      end
    end

    @plan.save

    # count.each_pair do |activity, times|
    #   category_instance_id = Category.find_by(foursquare_category_id: activity).id
    #   unless Place.find_by(category_id: category_instance_id, city_id: @plan.city_id).present?
    #     create_places(category_id)
    #   end
    #   ranked_places = Place.where(category_id: category_instance_id, city_id: @plan.city_id).order(rating: :desc)
    #   times.times do |time|
    #     # create_activity(,,ranked_places[time])
    #     # how to give it the right slot and date? (iterate through slots and days of plan)
    #   end
    # end

    # return

    # duration.times do |index|
    #   date = @plan.start_date + index.days
    #   pp date

    #   day_slots.each_with_index do |slot, index|
    #     category = best_category_for_slot(slot, category_ids)

    #     place = foursquare_best_place(category)

    #     #Activity.create!(slot: index + 1, plan: @plan, place: "", date: date)
    #   end
    # end

    # category_id = '52e81612bcbc57f1066b7a14'

    # until duration == act1 do
    #   if
    # end

    # if Place.find_by(category_id: 11, city_id: 1).present?
    #   create_places(category_id)
    # else

    # end

    # depending on
    # number of days
    # preferences
    # weather

    # ranked_places = Place.sort_by { |place| place.rating }
    # category_instance = Category.find_by(foursquare_category_id: category_id)
  end

  def create_activity(slot, day, place)
    activity = Activity.new(plan_id: @plan.id, place_id: place.id, slot: slot, date: day)
    activity.save
  end

  def categories_for_a_day(slots, category_ids)
    slots.map do |slot|
      best_category_for_slot(slot, category_ids)
    end
  end

  def best_category_for_slot(slot, category_ids)
    existing = slot.find { |cat| category_ids.include?(cat.last) }

    return existing if existing.present?

    slot.sample
  end

  def create_places(category_id)
    city_id = @plan.city_id
    location = City.find(@plan.city_id).name
    url = "https://api.foursquare.com/v2/venues/explore?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{@v}&near=#{location}&radius=5000&limit=8&categoryId=#{category_id}"
    items = []
    json = RequestCache.get(url)
    groups = json.dig(:response, :groups)
    items = groups.first[:items]
    items.each do |item|
      venue_id = item.dig(:venue, :id)
      url2 = "https://api.foursquare.com/v2/venues/#{venue_id}?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{@v}"
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
end
