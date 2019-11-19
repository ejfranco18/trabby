require 'open-uri'
require 'json'

class PlacesController < ApplicationController
  skip_before_action :authenticate_user!



  def index
    @client_id = "YJ4CF523S31MTRIMRSDI5QV5RCIT0DKKF5QLYOFZ5I0S5DU1"
    @client_secret = "PIT2ZXNNQD4UK5RAWB5W3BTQD1FYQDYUG2HV4KCPO5BRZJ2U"
    @v = "20190425"

    if params[:query].present?
      # by location
      coordinates = Geocoder.search(params[:query])
      location = "#{coordinates.first.coordinates[0]},#{coordinates.first.coordinates[1]}"
      # url = "https://api.foursquare.com/v2/venues/search?client_id=#{@client_id }&client_secret=#{@client_secret}&v=#{@v}&ll=#{location}&radius=200"
      url = "https://api.foursquare.com/v2/venues/explore?client_id=#{@client_id }&client_secret=#{@client_secret}&v=#{@v}&ll=#{location}&limit=10"
      request = open(url).read
      response = JSON.parse(request)
      # @places = response["response"]["venues"]
      @places = response["response"]["groups"].first["items"]
    else
      url = "https://api.foursquare.com/v2/venues/search?client_id=#{@client_id }&client_secret=#{@client_secret}&v=#{@v}&ll=40.7099,-73.9622&radius=200"
      request = open(url).read
      response = JSON.parse(request)
      # @places = response["response"]["venues"]
      @places = response
    end

    # by word
    # url = "https://api.foursquare.com/v2/venues/search?client_id=#{@client_id}&client_secret=#{@client_secret}&v=#{@v}&intent=global&query=tattoo&limit=5"

    # @markers = @places.map do |place|
    # {
    #     lat: place["location"]["lat"],
    #     lng: place["location"]["lng"]
    # }
    # end

    @markers = @places.map do |place|
    {
        lat: place["venue"]["location"]["lat"],
        lng: place["venue"]["location"]["lng"]
    }
    end
  end

  def show
    @client_id = "YJ4CF523S31MTRIMRSDI5QV5RCIT0DKKF5QLYOFZ5I0S5DU1"
    @client_secret = "PIT2ZXNNQD4UK5RAWB5W3BTQD1FYQDYUG2HV4KCPO5BRZJ2U"
    @v = "20190425"

    url = "https://api.foursquare.com/v2/venues/#{params[:id]}?client_id=#{@client_id}&client_secret=#{@client_secret}&v=#{@v}"
    request = open(url).read
    response = JSON.parse(request)
    @place = response["response"]["venue"]
  end
end
