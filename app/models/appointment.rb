class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  enum :status, {pending: 0, rejected: 1, accepted: 2}, prefix: true
  validates :date_of_appointment, :no_of_session, :status, presence: true
  validates_associated :user, :doctor
end
