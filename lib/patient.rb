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
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select do |eachAppointment|
      eachAppointment.patient == self
    end
  end
  
  def doctors
    allAppointments = appointments
    allDoctors =[]
    allAppointments.each do |eachAppointment|
      allDoctors << eachAppointment.doctor 
    end
    return allDoctors
  end
end