class Doctor
  
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patiant, date)
    appointment = Appointment.new(patiant,self, date)
  end
end