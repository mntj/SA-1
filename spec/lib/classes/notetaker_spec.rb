require 'rails_helper'

RSpec.describe Notetaker do
  describe '#take_note' do
    before :all do
      Note.delete_all
    end

    it 'creates notes properly' do
      msg = "Note read the sun also rises"

      notetaker = Notetaker.new(msg).take_note

      expect(Note.first.contents).to eq("read the sun also rises")
    end
  end

  describe '#retrieve_note' do
    it 'returns the correct note' do
      msg = "View note 1"

      note = Notetaker.new(msg).retrieve_note

      expect(note).to eq("read the sun also rises")
    end
  end
end
