class Doctor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|instance| instance.doctor == self}
  end

  def patients
    Appointment.all.select{|instance| instance.doctor == self}.collect {|instance| instance.patient}
  end
end
