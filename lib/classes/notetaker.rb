class Notetaker
  def initialize(msg)
    @msg = msg
  end

  attr_reader :msg

  def take_note
    note = msg.split(" ")[1..-1].join(" ")
    Note.create(contents: note)
  end
end
