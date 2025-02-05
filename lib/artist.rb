require "pry"

class Artist 
  
  attr_accessor :name 
  
  @@class_songs = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def songs 
    @songs
  end 
  
  def add_song(song)
    @songs << song
    @@class_songs << song
    song.artist = self
  end 
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    @@class_songs << song
    song.artist = self 
  end 
  
  def self.song_count
    @@class_songs.size
  end 
  
  
end 