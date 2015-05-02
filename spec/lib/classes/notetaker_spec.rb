require 'rails_helper'

RSpec.describe Notetaker do
  describe '#take_note' do
    before :each do
      Note.delete_all
    end

    it 'creates notes properly' do
      msg = "Note read the sun also rises"

      notetaker = Notetaker.new(msg).take_note

      expect(Note.first.contents).to eq("read the sun also rises")
    end
  end
end
