require 'rails_helper'

RSpec.describe Dispatcher do
  describe '#dispatch_message' do
    it 'returns an error if there is no receiver' do
      msg = "I'm a test message!"
      actual = Dispatcher.new(msg).dispatch_message

      expected = "Sorry, couldn't recognize that input"

      expect(actual).to eq(expected)
    end

    it 'routes notes to a note taker' do
      msg = "note here's my sample note"

      actual = Dispatcher.new(msg).dispatch_message


    end
  end
end
