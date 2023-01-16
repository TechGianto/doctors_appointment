class PatientMedication < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  enum status: { started: 1, in_progress: 2, completed: 3, cancelled: 4 }
  validates :medication_name, :dose, :dosage, :no_of_days, presence: true
 
end
