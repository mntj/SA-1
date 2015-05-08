class Meteorologist
  def initialize(zip_code)
    @zip = zip_code
  end

  attr_reader :zip

  def get_weather
    url = "http://api.openweathermap.org/data/2.5/weather?zip=#{zip},us"
    res = HTTParty.get(url)
  end
end
