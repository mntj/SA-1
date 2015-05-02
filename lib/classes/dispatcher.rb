class Dispatcher
  def initialize(raw_msg)
    @raw_msg = raw_msg
  end

  attr_reader :raw_msg

  def dispatch_message
    r = raw_msg

    if r.split(" ").first.downcase == "note"
      Notetaker.new(r).take_note
    else
      "Sorry, couldn't recognize that input"
    end
  end
end
