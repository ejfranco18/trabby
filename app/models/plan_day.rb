class PlanDay < ApplicationRecord
  belongs_to :plan
  has_many :activities, dependent: :destroy

  before_save :save_weather_info

  private

  def save_weather_info
    city = plan.city.name

    dt = date.to_time.to_i
    url = "https://api.openweathermap.org/data/2.5/weather?units=metric&q=#{city}&dt=#{dt}&appid=#{ENV['OPENWEATHER_KEY']}"

    response = RequestCache.get(url)

    weather = response[:weather]

    self.weather_info = {
      description: weather.first[:description],
      temp: response.dig(:main, :temp),
      icon: "http://openweathermap.org/img/w/#{weather.first[:icon]}.png"
    }
  end
end
