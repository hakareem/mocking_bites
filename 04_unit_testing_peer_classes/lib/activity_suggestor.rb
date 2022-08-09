require 'json'

class ActivitySuggester
  def initialize(requester)
    @requester = requester
  end

  def suggest
    response = make_request_to_api
    return "Why not: #{response["activity"]}"
  end

  private

  # This method calls an 'API' on the internet to get a random activity.
  def make_request_to_api
    text_response = @requester.get(URI("https://www.boredapi.com/api/activity"))
    return JSON.parse(text_response)
  end
end


# require "net/http"
# activity_suggester = ActivitySuggester.new
# activity_suggester.suggest # => "Why not: Learn how to use a french press"
# activity_suggester.suggest # => "Why not: Hold a video game tournament with some friends"