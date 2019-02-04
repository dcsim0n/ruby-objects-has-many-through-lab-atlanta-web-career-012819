class Appointment
  @@all = []
  def initialize(date,patient,doctor)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end
  attr_reader :patient, :doctor, :date

  def self.all
    @@all
  end

end
