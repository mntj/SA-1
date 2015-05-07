class Meteorologist
  def initialize(zip_code)
    @zip = zip_code
  end

  attr_reader :zip

  def get_weather
  end
end
