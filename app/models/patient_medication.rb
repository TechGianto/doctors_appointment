class PatientMedication < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  enum status: { started: 1, in_progress: 2, completed: 3, cancelled: 4 }
  validates :medication_name, :dose, :dosage, :no_of_days, :user_id, :doctor_id, presence: true
  
  

  def self.patient_medication_for_today(user)
    user.patient_medications.filter do |item|
      item.created_at + item.no_of_days.days >= Time.now
    end
  end
end
