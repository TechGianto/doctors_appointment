class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  enum :status, {pending: 1, rejected: 2, accepted: 3}, prefix: true
  validates :date_of_appointment, :no_of_session, :status, presence: true

end
