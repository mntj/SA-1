class Meteorologist
  def initialize(zip_code)
    @zip = zip_code
  end

  attr_reader :zip

  def get_weather
    "General: #{weather_data[:main]}\n" <<
    "Temp: #{weather_data[:temp]}"
  end

  private

  def weather_data
    url = "http://api.openweathermap.org/data/2.5/weather?zip=#{zip},us"
    res = HTTParty.get(url)
    {
      :main => res["weather"].first["description"],
      :temp => res["main"]["temp"]
    }
  end
end
