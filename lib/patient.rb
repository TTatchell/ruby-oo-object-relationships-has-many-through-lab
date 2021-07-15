class Patient
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|instance| instance.patient == self}
    end

    def doctors
        Appointment.all.select{|instance| instance.patient == self}.collect {|instance| instance.doctor}
    end

end