require "cat_facts"

RSpec.describe CatFacts do
  it "returns a formatted cat fact" do
    requester = double :requester
    expect(requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{
    "fact": "Cats walk on their toes.",
    "length": 24
  }')
  cat = CatFacts.new(requester)
  expect(cat.provide).to eq "Cat fact: Cats walk on their toes."
  end
end