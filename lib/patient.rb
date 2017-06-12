require "pry"

class Patient
  
  attr_reader :name, :appointments, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.map {|appointment| appointment.doctor}
  end

end
