class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  enum status: {
    pending: 0,
    rejected: 1,
    accepted: 2,
  }

  validates :date_of_appointment, :no_of_session, :status, presence: true

end
