class Dispatcher
  def initialize(raw_msg)
    @raw_msg = raw_msg
  end

  attr_reader :raw_msg

  def dispatch_message
    key = raw_msg.split(" ").first.downcase

    if key == "note"
      Notetaker.new(raw_msg).take_note
    elsif key == "view"
      Notetaker.new(raw_msg).retrieve_note
    else
      "Sorry, couldn't recognize that input"
    end
  end
end
