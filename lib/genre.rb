class Genre
  @@all = [] 
  attr_reader :name
  def initialize(name)
    @name = name
    @artist = artist
    @genre = genre
    @@all << song
  end
  
  def self.all
    @@all
  end
end