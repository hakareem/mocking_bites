require "track"

RSpec.describe Track do
 it "matches when given a keyword in the title" do
  track = Track.new("Who When Where", "Over there")
  expect(track.matches?("When")).to eq true
 end

 it "matches when given a keyword in the artist" do
  track = Track.new("Who When Where", "Over there")
  expect(track.matches?("Over")).to eq true
 end

 it "does not matche when given a keyword in the title" do
  track = Track.new("Who When Where", "Over there")
  expect(track.matches?("Jade")).to eq false
 end

 it "does not matche when given a keyword in the artist" do
  track = Track.new("Who When Where", "Over there")
  expect(track.matches?("Made")).to eq false
 end

end