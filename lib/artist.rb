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
  
  def song
    
  end
end
  