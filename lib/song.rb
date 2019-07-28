class Song
  @@all = [] 
  attr_reader :name, :genre
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << song
  end
  
  def self.all
    @@all
  end
end