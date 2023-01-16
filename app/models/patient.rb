class Patient < User
  has_many :patient_medications, dependent: :destroy
  has_many :appointments
  has_many :doctors, through: :appointments

  
  def medication_for_today
      patient_medications.filter do |item|
      item.created_at + item.no_of_days.days >= Time.current
    end
  end
end