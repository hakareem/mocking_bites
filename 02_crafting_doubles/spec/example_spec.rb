RSpec.describe "example" do
 it "showcases exmaple" do
  fake = double :fake
  expect(fake).to receive(:greet).with("x").and_return("Hello, x")
  expect(fake).to receive(:shake).with("wind").and_return("wind is strong")
  expect(fake.greet("x")).to eq "Hello, x"
  expect(fake.shake("wind")).to eq "wind is strong"
 end
end