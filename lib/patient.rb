class Patient
  @@all = []
  attr_reader :name
  def initialize (name)
    @name = name
    @@all << self
  end
  
end