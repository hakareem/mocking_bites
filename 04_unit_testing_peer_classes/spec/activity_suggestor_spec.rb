require "activity_suggestor"

RSpec.describe ActivitySuggester do
  it "suggests an activity" do
    req = double :req
    expect(req).to receive(:get).with(URI("https://www.boredapi.com/api/activity")).and_return('{
      "activity": "Do a jigsaw puzzle",
      "type": "recreational",
      "participants": 1,
      "price": 0.1,
      "link": "https://en.wikipedia.org/wiki/Jigsaw_puzzle",
      "key": "8550768",
      "accessibility": 1
    }')
    activity = ActivitySuggester.new(req)
    expect(activity.suggest).to eq "Why not: Do a jigsaw puzzle"
  end
end

