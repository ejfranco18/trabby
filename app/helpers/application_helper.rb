module ApplicationHelper
  CACHE_FOLDER = '4square_cache'

  def resource_name
    :user
  end

  # def resource
  #   @resource ||= User.new
  # end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def smart_image(place)
    name = place.dig(:venue, :name)
    id = place.dig(:venue, :id)
    city = place.dig(:venue, :location, :city)

    unless ImageCache.exists?(foursquare_id: id)
      url_google_search = "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=#{name} #{city}&inputtype=textquery&fields=photos&key=#{ENV['GOOGLE_KEY']}"
      json = RequestCache.get(URI.escape(url_google_search))


      if json[:candidates]&.first[:photos].nil?
        return ''
      else
        reference = json[:candidates]&.first[:photos]&.first[:photo_reference]
        image = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{reference}&key=#{ENV['GOOGLE_KEY']}"

        result = Cloudinary::Uploader.upload(
          image,
          folder: CACHE_FOLDER,
          public_id: id,
          overwrite: true
        )

        ImageCache.create!(foursquare_id: id, cl_id: result['public_id'])
      end
    end

    cl_image_path ImageCache.find_by(foursquare_id: id).cl_id
  end
end
