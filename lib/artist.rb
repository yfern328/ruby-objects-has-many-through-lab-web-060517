require "pry"

class Artist
  
  attr_accessor :name, :songs, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.map {|song| song.genre}
  end

end
