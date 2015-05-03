class Notetaker
  def initialize(msg)
    @msg = msg
  end

  attr_reader :msg

  def take_note
    note = msg.split(" ")[1..-1].join(" ")
    n = Note.create(contents: note)
    "Saved as note #{n.id}"
  end

  def retrieve_note
    note_id = msg.split(" ").last
    note = Note.find(note_id)

    "Note: #{note_id}\n" <<
    "Created at: #{note.created_at.to_date}\n" <<
    "#{note.contents}"
  end
end
