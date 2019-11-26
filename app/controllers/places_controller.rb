class PlacesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @resource = User.new
    @v = "20190425"
    if params[:query].present?
      coordinates = Geocoder.search(params[:query])
      location = "#{coordinates.first.coordinates[0]},#{coordinates.first.coordinates[1]}"
      url = "https://api.foursquare.com/v2/venues/explore?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{@v}&ll=#{location}&limit=8"
      response = RequestCache.get(url)
      @places = response[:response][:groups].first[:items]
    @city = City.where(name: params[:query].split(',').first).first
    if @city.nil?
      @city = City.where(name: "default").first
    end
    @picked_places = []
    @places.each do |place|
      name = place["venue"]["name"]
      # request_google = URI.parse(URI.escape(url_google_search)).read
      # response_google = JSON.parse(request_google)

      # if response_google["candidates"][0]["photos"][0]["photo_reference"].nil?
      #   @image = ""
      # else
      #   @reference = response_google["candidates"][0]["photos"][0]["photo_reference"]
      #   @image = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{@reference}&key=#{ENV['GOOGLE_KEY']}"
      # end

      @picked_places << {json: place[:venue], image: ""}
    end

    else
      # pending dinamic current location
      url = "https://api.foursquare.com/v2/venues/search?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{@v}&ll=40.7099,-73.9622&radius=200"
          response = RequestCache.get(url)
    @places = response[:response][:venues]
    #pending based on location
    @city = ""
    @picked_places = []
    @places.each do |place|
      name = place["name"]
      id = place[:id]

      # request_google = URI.parse(URI.escape(url_google_search)).read
      # response_google = JSON.parse(request_google)

      # if response_google["candidates"][0]["photos"][0]["photo_reference"].nil?
      #   @image = ""
      # else
      #   @reference = response_google["candidates"][0]["photos"][0]["photo_reference"]
      #   @image = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{@reference}&key=#{ENV['GOOGLE_KEY']}"
      # end

      @picked_places << {json: place, image: ""}
    end
    end

    # by word
    # url = "https://api.foursquare.com/v2/venues/search?client_id=#{@client_id}&client_secret=#{@client_secret}&v=#{@v}&intent=global&query=tattoo&limit=5"

    @markers = @picked_places.map do |place|
      {
        lat: place[:json][:location][:lat],
        lng: place[:json][:location][:lng]
      }
    end
  end

  def request_places(url)
    response = RequestCache.get(url)
    @places = response[:response][:venues]
    @city = City.where(name: params[:query].split(',').first).first
    @picked_places = []
    @places.each do |place|
      name = place["venue"]["name"]
      # request_google = URI.parse(URI.escape(url_google_search)).read
      # response_google = JSON.parse(request_google)

      # if response_google["candidates"][0]["photos"][0]["photo_reference"].nil?
      #   @image = ""
      # else
      #   @reference = response_google["candidates"][0]["photos"][0]["photo_reference"]
      #   @image = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{@reference}&key=#{ENV['GOOGLE_KEY']}"
      # end

      @picked_places << {json: place, image: ""}
    end

  end

  def show
    @resource = User.new
    @v = "20190425"

    url = "https://api.foursquare.com/v2/venues/#{params[:id]}?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{@v}"

    response = RequestCache.get(url)

    @place = response["response"]["venue"]
    @markers = [{
      lat: @place["location"]["lat"],
      lng: @place["location"]["lng"]
    }]
  end

  def create
    @resource = User.new
    @place = Place.new(place_params)
    if @place.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    @place.update(place_params)
    redirect_to place_path(@place)
  end

  private

  def place_params
    params.require(:place).permit(:name, :address, :description, :opening_hours, :images, :latitude, :longitude, :duration, :type, :city_id, :price_id, :category_id)
  end
end
