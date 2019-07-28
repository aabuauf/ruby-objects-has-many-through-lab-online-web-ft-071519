class Patient
  @@all = []
  attr_reader :name
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment
    appointment = Appointment.new(self,doctor, date)
  end
  
  def appointments
    
  end
end