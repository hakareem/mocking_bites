require "music_library"
require "track"


RSpec.describe "integration" do
 it "adds and lists tracks" do
  lib = MusicLibrary.new
  track1 = Track.new("title", "artist")
  track2 = Track.new("ti", "art")
  lib.add(track1)
  lib.add(track2)
  expect(lib.all).to eq [track1,track2]
 end

 it "searches tracks by title" do
  lib = MusicLibrary.new
  track1 = Track.new("title", "artist")
  track2 = Track.new("ti", "art")
  lib.add(track1)
  lib.add(track2)
  expect(lib.search("le")).to eq [track1]
 end
end