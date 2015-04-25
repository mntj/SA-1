class MainController < ApplicationController
  def inbound
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message do |msg|
        msg.Body "You just sent #{params["Body"]}"
      end
    end

    render text: twiml.text
  end
end
