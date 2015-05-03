require 'rails_helper'

RSpec.describe Notetaker do
  describe '#take_note' do
    it 'creates notes properly' do
      msg = "Note read the sun also rises"

      Notetaker.new(msg).take_note

      expect(Note.first.contents).to eq("read the sun also rises")
    end
  end

  describe '#retrieve_note' do
    it 'returns the correct note' do
      msg1 = "Note take out the trash"
      msg2 = "Note wash clothes"
      Notetaker.new(msg1).take_note
      Notetaker.new(msg2).take_note

      retrieval_msg = "View note #{Note.last.id}"
      note2 = Note.last

      actual = Notetaker.new(retrieval_msg).retrieve_note

      expected = "Note: #{note2.id}\n" <<
                 "Created at: #{note2.created_at.to_date}\n" <<
                 "#{note2.contents}"

      expect(actual).to eq(expected)
    end
  end

  after :all do
    Note.delete_all
  end
end
