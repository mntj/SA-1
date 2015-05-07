class Meteorologist
  def initialize(zip_code)
    @zip = zip_code
  end

  attr_reader :zip

  def get_weather
    res = HTTParty.get()
  end

  BASE_WEATHER_URL = "api.openweathermap.org/data/2.5/weather?zip="
end
