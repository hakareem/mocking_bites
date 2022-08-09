require "music_library"


RSpec.describe MusicLibrary do
 it "adds and lists tracks" do
  lib = MusicLibrary.new
  track1 = double :track
  track2 = double :track
  lib.add(track1)
  lib.add(track2)
  expect(lib.all).to eq [track1,track2]
 end


 describe "search" do
  it "searches for tracks that match" do
  lib = MusicLibrary.new
  track1 = double :track
  expect(track1).to receive(:matches?).with("when").and_return(true)
  track2 = double :track
  expect(track2).to receive(:matches?).with("when").and_return(false)
  lib.add(track1)
  lib.add(track2)
  expect(lib.search("when")).to eq [track1]
  end
 end
end