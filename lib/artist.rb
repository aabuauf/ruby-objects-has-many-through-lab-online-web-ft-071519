require 'pry'

class Artist
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(songName,genre)
    song = Song.new(songName,self,genre)
  end
  
  def songs
    Song.all.select do|eachSong|
      self == eachSong.artist
    end
  end
  
  def generes
    allGenre = []
    artistSongs = songs
    artistSongs.each do |eachSong|
      allGenre << eachSong.genre
    end
    return allGenre
  end
end
  