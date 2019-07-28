class Genre
  @@all = [] 
  attr_reader :name, :artist
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do|eachSong|
        self ==eachSong.genre
    end
  end
  
  def artists
    allArtists = []
    genreSongs = songs
    genreSongs.all do|eachSong|
      allArtists << eachsong.artist
    end
    return allArtists
  end
end