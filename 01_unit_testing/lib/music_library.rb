# File: lib/music_library.rb

class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) # track is an instance of Track
    @tracks << track
  end

  def all
    return @tracks
  end
  
  def search(keyword) # keyword is a string
    return @tracks.select{|x| x.matches?(keyword)}
  end
end