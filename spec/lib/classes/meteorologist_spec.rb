require "rails_helper"

RSpec.describe Meteorologist do
  describe '#get_weather' do
    it 'retrieves weather data' do
      zip = 10010
      data = Meteorologist.new(zip).get_weather
      expect(data['weather']).not_to be_nil
    end
  end
end
