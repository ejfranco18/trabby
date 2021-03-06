class PlacesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @v = "20190425"
    coordinates = Geocoder.search(params[:query])
    @city = City.where(name: params[:query].split(',').first).first_or_create!

    url = "https://api.foursquare.com/v2/venues/explore?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{@v}&near=#{@city.name}&sortByPopularity=true&limit=9"

    response = RequestCache.get(url)

    @places = response[:response][:groups].first[:items]

    @markers = @places.map do |place|
      {
        lat: place.dig(:venue, :location, :lat),
        lng: place.dig(:venue, :location, :lng),
        infoWindow: render_to_string(partial: "info_window", locals: { place: place })
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
      @picked_places << {json: place, image: ""}
    end

  end

  def show
    @v = "20190425"
    url = "https://api.foursquare.com/v2/venues/#{params[:id]}?client_id=#{ENV['FOURSQUARE_API_KEY']}&client_secret=#{ENV['FOURSQUARE_SECRET_KEY']}&v=#{@v}"
    response = RequestCache.get(url)

    @place = response.dig(:response)

    @markers = [{
      lat: @place.dig(:venue, :location, :lat),
      lng: @place.dig(:venue, :location, :lng),
      infoWindow: render_to_string(partial: "info_window", locals: { place: @place })
    }]

  end

  def create
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
