class Dispatcher
  def initialize(raw_input)
    @raw_input = raw_input
  end

  attr_reader :raw_input

  def dispatch_message
    "Sorry, couldn't recognize that input"
  end
end
