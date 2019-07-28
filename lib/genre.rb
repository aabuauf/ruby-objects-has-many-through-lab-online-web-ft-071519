class Genre
  @@all = [] 
  attr_reader :name
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
    genreSongs = songs
    genreSongs.all do|eachSong|
    
    end
  end
end