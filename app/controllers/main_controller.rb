class MainController < ApplicationController
  def inbound
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message do |msg|
        text = params["Body"]
        res = Dispatcher.new(text).dispatch_message
        msg.Body res
      end
    end

    render text: twiml.text
  end
end
